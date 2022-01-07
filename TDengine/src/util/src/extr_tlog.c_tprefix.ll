; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_tprefix.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_tprefix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32 }
%struct.timeval = type { i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"%02d/%02d %02d:%02d:%02d.%06d 0x%lld \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @tprefix(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tm, align 4
  %4 = alloca %struct.tm*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = call i32 @gettimeofday(%struct.timeval* %5, i32* null)
  %8 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = call %struct.tm* @localtime_r(i32* %6, %struct.tm* %3)
  store %struct.tm* %10, %struct.tm** %4, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = load %struct.tm*, %struct.tm** %4, align 8
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  %16 = load %struct.tm*, %struct.tm** %4, align 8
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tm*, %struct.tm** %4, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tm*, %struct.tm** %4, align 8
  %23 = getelementptr inbounds %struct.tm, %struct.tm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tm*, %struct.tm** %4, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 (...) @taosGetPthreadId()
  %32 = call i32 @sprintf(i8* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24, i32 %27, i32 %30, i32 %31)
  %33 = load i8*, i8** %2, align 8
  ret i8* %33
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local %struct.tm* @localtime_r(i32*, %struct.tm*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @taosGetPthreadId(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
