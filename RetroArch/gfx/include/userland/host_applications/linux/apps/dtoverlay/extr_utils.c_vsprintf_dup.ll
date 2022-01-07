; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_utils.c_vsprintf_dup.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/dtoverlay/extr_utils.c_vsprintf_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [31 x i8] c"Maximum string length exceeded\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@allocated_strings = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vsprintf_dup(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [512 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %9 = load i8*, i8** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @vsnprintf(i8* %8, i32 512, i8* %9, i32 %10)
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ugt i64 %14, 512
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = call i32 @fatal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %2
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 24, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.TYPE_4__* @malloc(i32 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %18
  %27 = call i32 @fatal_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %18
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds [512 x i8], [512 x i8]* %5, i64 0, i64 0
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @memcpy(i8* %31, i8* %32, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @allocated_strings, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %56

37:                                               ; preds = %28
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @allocated_strings, align 8
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store %struct.TYPE_4__* %38, %struct.TYPE_4__** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** @allocated_strings, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.TYPE_4__* %43, %struct.TYPE_4__** %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %50, align 8
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %55, align 8
  br label %64

56:                                               ; preds = %28
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  store %struct.TYPE_4__* %63, %struct.TYPE_4__** @allocated_strings, align 8
  br label %64

64:                                               ; preds = %56, %37
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  ret i8* %67
}

declare dso_local i32 @vsnprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
