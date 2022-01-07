; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_GetTimeDiffEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Kernel.c_GetTimeDiffEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @GetTimeDiffEx(%struct.tm* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.tm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.tm, align 4
  %8 = alloca %struct.tm, align 4
  %9 = alloca %struct.tm, align 4
  %10 = alloca %struct.tm, align 4
  %11 = alloca %struct.tm, align 4
  %12 = alloca %struct.tm, align 4
  %13 = alloca i64, align 8
  store %struct.tm* %0, %struct.tm** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load %struct.tm*, %struct.tm** %4, align 8
  %15 = call i32 @Copy(%struct.tm* %9, %struct.tm* %14, i32 4)
  %16 = call i32 @SystemToTm(%struct.tm* %10, %struct.tm* %9)
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = call i64 @c_mkgmtime(%struct.tm* %10)
  store i64 %20, i64* %6, align 8
  br label %23

21:                                               ; preds = %2
  %22 = call i64 @mktime(%struct.tm* %10)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %19
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %38

27:                                               ; preds = %23
  %28 = call %struct.tm* @localtime(i64* %6)
  %29 = call i32 @Copy(%struct.tm* %7, %struct.tm* %28, i32 4)
  %30 = call %struct.tm* @gmtime(i64* %6)
  %31 = call i32 @Copy(%struct.tm* %8, %struct.tm* %30, i32 4)
  %32 = call i32 @TmToSystem(%struct.tm* %11, %struct.tm* %7)
  %33 = call i32 @TmToSystem(%struct.tm* %12, %struct.tm* %8)
  %34 = call i64 @SystemToUINT64(%struct.tm* %11)
  %35 = call i64 @SystemToUINT64(%struct.tm* %12)
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %13, align 8
  %37 = load i64, i64* %13, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %27, %26
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @Copy(%struct.tm*, %struct.tm*, i32) #1

declare dso_local i32 @SystemToTm(%struct.tm*, %struct.tm*) #1

declare dso_local i64 @c_mkgmtime(%struct.tm*) #1

declare dso_local i64 @mktime(%struct.tm*) #1

declare dso_local %struct.tm* @localtime(i64*) #1

declare dso_local %struct.tm* @gmtime(i64*) #1

declare dso_local i32 @TmToSystem(%struct.tm*, %struct.tm*) #1

declare dso_local i64 @SystemToUINT64(%struct.tm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
