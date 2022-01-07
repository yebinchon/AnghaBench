; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_printfuncs.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/etc/extr_bprint.c_printfuncs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i8*, %struct.func* }
%struct.func = type { i8*, %struct.caller*, %struct.TYPE_2__, %struct.func* }
%struct.caller = type { i32, i8*, i8*, i32, i32, %struct.caller* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@fcount = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\09%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%d\09%s\09from %s\09in %s:%d.%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printfuncs(%struct.file* %0, i32 %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.func*, align 8
  %6 = alloca %struct.caller*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.file*, %struct.file** %3, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.file*, %struct.file** %3, align 8
  %16 = getelementptr inbounds %struct.file, %struct.file* %15, i32 0, i32 1
  %17 = load %struct.func*, %struct.func** %16, align 8
  store %struct.func* %17, %struct.func** %5, align 8
  br label %18

18:                                               ; preds = %78, %14
  %19 = load %struct.func*, %struct.func** %5, align 8
  %20 = icmp ne %struct.func* %19, null
  br i1 %20, label %21, label %82

21:                                               ; preds = %18
  %22 = load i32, i32* @fcount, align 4
  %23 = icmp sle i32 %22, 1
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load %struct.func*, %struct.func** %5, align 8
  %26 = getelementptr inbounds %struct.func, %struct.func* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.func*, %struct.func** %5, align 8
  %32 = getelementptr inbounds %struct.func, %struct.func* %31, i32 0, i32 1
  %33 = load %struct.caller*, %struct.caller** %32, align 8
  %34 = icmp ne %struct.caller* %33, null
  br i1 %34, label %44, label %35

35:                                               ; preds = %30, %24, %21
  %36 = load %struct.func*, %struct.func** %5, align 8
  %37 = getelementptr inbounds %struct.func, %struct.func* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.func*, %struct.func** %5, align 8
  %41 = getelementptr inbounds %struct.func, %struct.func* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %39, i8* %42)
  br label %77

44:                                               ; preds = %30
  %45 = load %struct.func*, %struct.func** %5, align 8
  %46 = getelementptr inbounds %struct.func, %struct.func* %45, i32 0, i32 1
  %47 = load %struct.caller*, %struct.caller** %46, align 8
  store %struct.caller* %47, %struct.caller** %6, align 8
  br label %48

48:                                               ; preds = %72, %44
  %49 = load %struct.caller*, %struct.caller** %6, align 8
  %50 = icmp ne %struct.caller* %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %48
  %52 = load %struct.caller*, %struct.caller** %6, align 8
  %53 = getelementptr inbounds %struct.caller, %struct.caller* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.func*, %struct.func** %5, align 8
  %56 = getelementptr inbounds %struct.func, %struct.func* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.caller*, %struct.caller** %6, align 8
  %59 = getelementptr inbounds %struct.caller, %struct.caller* %58, i32 0, i32 1
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.caller*, %struct.caller** %6, align 8
  %62 = getelementptr inbounds %struct.caller, %struct.caller* %61, i32 0, i32 2
  %63 = load i8*, i8** %62, align 8
  %64 = load %struct.caller*, %struct.caller** %6, align 8
  %65 = getelementptr inbounds %struct.caller, %struct.caller* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.caller*, %struct.caller** %6, align 8
  %68 = getelementptr inbounds %struct.caller, %struct.caller* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  %71 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54, i8* %57, i8* %60, i8* %63, i32 %66, i32 %70)
  br label %72

72:                                               ; preds = %51
  %73 = load %struct.caller*, %struct.caller** %6, align 8
  %74 = getelementptr inbounds %struct.caller, %struct.caller* %73, i32 0, i32 5
  %75 = load %struct.caller*, %struct.caller** %74, align 8
  store %struct.caller* %75, %struct.caller** %6, align 8
  br label %48

76:                                               ; preds = %48
  br label %77

77:                                               ; preds = %76, %35
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.func*, %struct.func** %5, align 8
  %80 = getelementptr inbounds %struct.func, %struct.func* %79, i32 0, i32 3
  %81 = load %struct.func*, %struct.func** %80, align 8
  store %struct.func* %81, %struct.func** %5, align 8
  br label %18

82:                                               ; preds = %18
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
