; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_defs.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_defs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64, %struct.TYPE_14__, %struct.TYPE_13__, i64 }
%struct.TYPE_14__ = type { i64, i64 }
%struct.TYPE_13__ = type { i32 }

@sorted_syms = common dso_local global %struct.TYPE_15__** null, align 8
@SYM_RESOLVED = common dso_local global i64 0, align 8
@REACHABLE_NATURAL = common dso_local global i64 0, align 8
@DECL_FUNC = common dso_local global i64 0, align 8
@gen_buf = common dso_local global i8* null, align 8
@inline_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"INLINE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"noinline\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"NOINLINE\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@DECL_VAR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [12 x i8] c"THREADLOCAL\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c";\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_defs() #0 {
  %1 = alloca %struct.TYPE_15__**, align 8
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sorted_syms, align 8
  store %struct.TYPE_15__** %6, %struct.TYPE_15__*** %1, align 8
  br label %7

7:                                                ; preds = %139, %0
  %8 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %1, align 8
  %9 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @sorted_syms, align 8
  %10 = call %struct.TYPE_15__** @buf_end(%struct.TYPE_15__** %9)
  %11 = icmp ne %struct.TYPE_15__** %8, %10
  br i1 %11, label %12, label %142

12:                                               ; preds = %7
  %13 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %1, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %2, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %3, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @SYM_RESOLVED, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %37, label %23

23:                                               ; preds = %12
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %25 = icmp ne %struct.TYPE_16__* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @REACHABLE_NATURAL, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %31, %26, %23, %12
  br label %139

38:                                               ; preds = %31
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DECL_FUNC, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %38
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = call i32 @is_decl_foreign(%struct.TYPE_16__* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i8*, i8** @gen_buf, align 8
  store i8* %47, i8** %5, align 8
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i8* null, i8** @gen_buf, align 8
  br label %51

51:                                               ; preds = %50, %44
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %53 = load i32, i32* @inline_name, align 4
  %54 = call i64 @get_decl_note(%struct.TYPE_16__* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %51
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %60 = call i32 @str_intern(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i64 @get_decl_note(%struct.TYPE_16__* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %58
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %67 = call i32 @gen_func_decl(%struct.TYPE_16__* %66)
  %68 = call i32 @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @gen_stmt_block(i32 %72)
  %74 = call i32 (...) @genln()
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i8*, i8** %5, align 8
  store i8* %78, i8** @gen_buf, align 8
  br label %79

79:                                               ; preds = %77, %65
  br label %138

80:                                               ; preds = %38
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @DECL_VAR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %80
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %88 = call i64 @is_decl_threadlocal(%struct.TYPE_16__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %92

92:                                               ; preds = %90, %86
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %114

98:                                               ; preds = %92
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @is_incomplete_array_typespec(i64 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %98
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %111 = call i32 @get_gen_name(%struct.TYPE_15__* %110)
  %112 = call i32 @typespec_to_cdecl(i64 %109, i32 %111)
  %113 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  br label %122

114:                                              ; preds = %98, %92
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %119 = call i32 @get_gen_name(%struct.TYPE_15__* %118)
  %120 = call i32 @type_to_cdecl(i32 %117, i32 %119)
  %121 = call i32 (i8*, ...) @genlnf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %114, %105
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = call i32 @genf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @gen_expr(i64 %133)
  br label %135

135:                                              ; preds = %128, %122
  %136 = call i32 @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %80
  br label %138

138:                                              ; preds = %137, %79
  br label %139

139:                                              ; preds = %138, %37
  %140 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %140, i32 1
  store %struct.TYPE_15__** %141, %struct.TYPE_15__*** %1, align 8
  br label %7

142:                                              ; preds = %7
  ret void
}

declare dso_local %struct.TYPE_15__** @buf_end(%struct.TYPE_15__**) #1

declare dso_local i32 @is_decl_foreign(%struct.TYPE_16__*) #1

declare dso_local i64 @get_decl_note(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @genlnf(i8*, ...) #1

declare dso_local i32 @str_intern(i8*) #1

declare dso_local i32 @gen_func_decl(%struct.TYPE_16__*) #1

declare dso_local i32 @genf(i8*) #1

declare dso_local i32 @gen_stmt_block(i32) #1

declare dso_local i32 @genln(...) #1

declare dso_local i64 @is_decl_threadlocal(%struct.TYPE_16__*) #1

declare dso_local i32 @is_incomplete_array_typespec(i64) #1

declare dso_local i32 @typespec_to_cdecl(i64, i32) #1

declare dso_local i32 @get_gen_name(%struct.TYPE_15__*) #1

declare dso_local i32 @type_to_cdecl(i32, i32) #1

declare dso_local i32 @gen_expr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
