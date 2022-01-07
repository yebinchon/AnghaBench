; ModuleID = '/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkioconf.c_pseudo_inits.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/SETUP/config/extr_mkioconf.c_pseudo_inits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64, i64, i32, %struct.device* }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@dtab = common dso_local global %struct.device* null, align 8
@PSEUDO_DEVICE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"extern int %s(int);\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"\0Astruct pseudo_init pseudo_inits[] = {\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"\09{%d,\09%s},\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\09{0,\090},\0A};\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pseudo_inits(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = call i32 (i32*, i8*, ...) @fprintf(i32* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.device*, %struct.device** @dtab, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  br label %8

8:                                                ; preds = %29, %1
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = icmp ne %struct.device* %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PSEUDO_DEVICE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = getelementptr inbounds %struct.device, %struct.device* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %11
  br label %29

23:                                               ; preds = %17
  %24 = load i32*, i32** %2, align 8
  %25 = load %struct.device*, %struct.device** %3, align 8
  %26 = getelementptr inbounds %struct.device, %struct.device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 (i32*, i8*, ...) @fprintf(i32* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %23, %22
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = getelementptr inbounds %struct.device, %struct.device* %30, i32 0, i32 3
  %32 = load %struct.device*, %struct.device** %31, align 8
  store %struct.device* %32, %struct.device** %3, align 8
  br label %8

33:                                               ; preds = %8
  %34 = load i32*, i32** %2, align 8
  %35 = call i32 (i32*, i8*, ...) @fprintf(i32* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.device*, %struct.device** @dtab, align 8
  store %struct.device* %36, %struct.device** %3, align 8
  br label %37

37:                                               ; preds = %66, %33
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = icmp ne %struct.device* %38, null
  br i1 %39, label %40, label %70

40:                                               ; preds = %37
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @PSEUDO_DEVICE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.device*, %struct.device** %3, align 8
  %48 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %40
  br label %66

52:                                               ; preds = %46
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = getelementptr inbounds %struct.device, %struct.device* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32*, i32** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.device*, %struct.device** %3, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 (i32*, i8*, ...) @fprintf(i32* %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %61, i64 %64)
  br label %66

66:                                               ; preds = %59, %51
  %67 = load %struct.device*, %struct.device** %3, align 8
  %68 = getelementptr inbounds %struct.device, %struct.device* %67, i32 0, i32 3
  %69 = load %struct.device*, %struct.device** %68, align 8
  store %struct.device* %69, %struct.device** %3, align 8
  br label %37

70:                                               ; preds = %37
  %71 = load i32*, i32** %2, align 8
  %72 = call i32 (i32*, i8*, ...) @fprintf(i32* %71, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
