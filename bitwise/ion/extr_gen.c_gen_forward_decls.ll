; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_forward_decls.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_forward_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@tuple_types = common dso_local global %struct.TYPE_13__** null, align 8
@.str = private unnamed_addr constant [32 x i8] c"typedef struct tuple%d tuple%d;\00", align 1
@sorted_syms = common dso_local global %struct.TYPE_14__** null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"typedef %s %s %s;\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"struct\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"union\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_forward_decls() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_14__**, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %34, %0
  %8 = load i32, i32* %1, align 4
  %9 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @tuple_types, align 8
  %10 = call i32 @buf_len(%struct.TYPE_13__** %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %7
  %13 = load %struct.TYPE_13__**, %struct.TYPE_13__*** @tuple_types, align 8
  %14 = load i32, i32* %1, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %13, i64 %15
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %17, %struct.TYPE_13__** %2, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %19 = call i64 @is_tuple_reachable(%struct.TYPE_13__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %12
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 (i8*, i8*, i8*, ...) @genlnf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i8* %26, i8* %31)
  br label %33

33:                                               ; preds = %21, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %1, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %1, align 4
  br label %7

37:                                               ; preds = %7
  %38 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  store %struct.TYPE_14__** %38, %struct.TYPE_14__*** %3, align 8
  br label %39

39:                                               ; preds = %80, %37
  %40 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %3, align 8
  %41 = load %struct.TYPE_14__**, %struct.TYPE_14__*** @sorted_syms, align 8
  %42 = call %struct.TYPE_14__** @buf_end(%struct.TYPE_14__** %41)
  %43 = icmp ne %struct.TYPE_14__** %40, %42
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %3, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  store %struct.TYPE_14__* %46, %struct.TYPE_14__** %4, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %48, align 8
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %5, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = icmp ne %struct.TYPE_15__* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %54 = call i32 @is_sym_reachable(%struct.TYPE_14__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52, %44
  br label %80

57:                                               ; preds = %52
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %59 = call i64 @is_decl_foreign(%struct.TYPE_15__* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  br label %80

62:                                               ; preds = %57
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %78 [
    i32 129, label %66
    i32 128, label %66
  ]

66:                                               ; preds = %62, %62
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %68 = call i8* @get_gen_name(%struct.TYPE_14__* %67)
  store i8* %68, i8** %6, align 8
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 129
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %75 = load i8*, i8** %6, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = call i32 (i8*, i8*, i8*, ...) @genlnf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %74, i8* %75, i8* %76)
  br label %79

78:                                               ; preds = %62
  br label %79

79:                                               ; preds = %78, %66
  br label %80

80:                                               ; preds = %79, %61, %56
  %81 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %81, i32 1
  store %struct.TYPE_14__** %82, %struct.TYPE_14__*** %3, align 8
  br label %39

83:                                               ; preds = %39
  ret void
}

declare dso_local i32 @buf_len(%struct.TYPE_13__**) #1

declare dso_local i64 @is_tuple_reachable(%struct.TYPE_13__*) #1

declare dso_local i32 @genlnf(i8*, i8*, i8*, ...) #1

declare dso_local %struct.TYPE_14__** @buf_end(%struct.TYPE_14__**) #1

declare dso_local i32 @is_sym_reachable(%struct.TYPE_14__*) #1

declare dso_local i64 @is_decl_foreign(%struct.TYPE_15__*) #1

declare dso_local i8* @get_gen_name(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
