; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kmake.c_generate_opcode_handler.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kmake.c_generate_opcode_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@g_prototype_file = common dso_local global i32 0, align 4
@EA_MODE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"EA_%s_8()\00", align 1
@g_ea_info_table = common dso_local global %struct.TYPE_2__* null, align 8
@ID_OPHANDLER_EA_AY_8 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"EA_%s_16()\00", align 1
@ID_OPHANDLER_EA_AY_16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"EA_%s_32()\00", align 1
@ID_OPHANDLER_EA_AY_32 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"OPER_%s_8()\00", align 1
@ID_OPHANDLER_OPER_AY_8 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"OPER_%s_16()\00", align 1
@ID_OPHANDLER_OPER_AY_16 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [13 x i8] c"OPER_%s_32()\00", align 1
@ID_OPHANDLER_OPER_AY_32 = common dso_local global i32 0, align 4
@g_num_functions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @generate_opcode_handler(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %15 = add nsw i32 %14, 1
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = call i32* @malloc(i32 4)
  store i32* %19, i32** %13, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @set_opcode_struct(i32* %20, i32* %21, i32 %22)
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @get_base_name(i8* %18, i32* %24)
  %26 = load i32, i32* @g_prototype_file, align 4
  %27 = call i32 @write_prototype(i32 %26, i8* %18)
  %28 = load i32*, i32** %13, align 8
  %29 = call i32 @add_opcode_output_table_entry(i32* %28, i8* %18)
  %30 = load i32*, i32** %6, align 8
  %31 = call i32 @write_function_name(i32* %30, i8* %18)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @EA_MODE_NONE, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %96

35:                                               ; preds = %5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_ea_info_table, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* @ID_OPHANDLER_EA_AY_8, align 4
  %45 = call i32 @add_replace_string(i32* %43, i32 %44, i8* %18)
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_ea_info_table, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @ID_OPHANDLER_EA_AY_16, align 4
  %55 = call i32 @add_replace_string(i32* %53, i32 %54, i8* %18)
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_ea_info_table, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* @ID_OPHANDLER_EA_AY_32, align 4
  %65 = call i32 @add_replace_string(i32* %63, i32 %64, i8* %18)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_ea_info_table, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %71)
  %73 = load i32*, i32** %8, align 8
  %74 = load i32, i32* @ID_OPHANDLER_OPER_AY_8, align 4
  %75 = call i32 @add_replace_string(i32* %73, i32 %74, i8* %18)
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_ea_info_table, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %81)
  %83 = load i32*, i32** %8, align 8
  %84 = load i32, i32* @ID_OPHANDLER_OPER_AY_16, align 4
  %85 = call i32 @add_replace_string(i32* %83, i32 %84, i8* %18)
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_ea_info_table, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* @ID_OPHANDLER_OPER_AY_32, align 4
  %95 = call i32 @add_replace_string(i32* %93, i32 %94, i8* %18)
  br label %96

96:                                               ; preds = %35, %5
  %97 = load i32*, i32** %6, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @write_body(i32* %97, i32* %98, i32* %99)
  %101 = load i32, i32* @g_num_functions, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* @g_num_functions, align 4
  %103 = load i32*, i32** %13, align 8
  %104 = call i32 @free(i32* %103)
  %105 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %105)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @malloc(i32) #2

declare dso_local i32 @set_opcode_struct(i32*, i32*, i32) #2

declare dso_local i32 @get_base_name(i8*, i32*) #2

declare dso_local i32 @write_prototype(i32, i8*) #2

declare dso_local i32 @add_opcode_output_table_entry(i32*, i8*) #2

declare dso_local i32 @write_function_name(i32*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @add_replace_string(i32*, i32, i8*) #2

declare dso_local i32 @write_body(i32*, i32*, i32*) #2

declare dso_local i32 @free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
