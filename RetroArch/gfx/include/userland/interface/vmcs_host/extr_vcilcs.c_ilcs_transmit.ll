; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs.c_ilcs_transmit.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs.c_ilcs_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i8, i8, i8*, i32, i8*, i32)* @ilcs_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ilcs_transmit(%struct.TYPE_6__* %0, i8 zeroext %1, i8 zeroext %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca [4 x %struct.TYPE_5__], align 16
  %16 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i8 %1, i8* %9, align 1
  store i8 %2, i8* %10, align 1
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 3, i32* %16, align 4
  %17 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i8* %9, i8** %18, align 16
  %19 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store i8* %10, i8** %22, align 16
  %23 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 1, i32* %24, align 8
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 2
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 16
  %28 = load i32, i32* %12, align 4
  %29 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %7
  %34 = load i8*, i8** %13, align 8
  %35 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 3
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 16
  %37 = load i32, i32* %14, align 4
  %38 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %16, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %16, align 4
  br label %42

42:                                               ; preds = %33, %7
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to %struct.TYPE_5__*
  %51 = getelementptr inbounds [4 x %struct.TYPE_5__], [4 x %struct.TYPE_5__]* %15, i64 0, i64 0
  %52 = load i32, i32* %16, align 4
  %53 = call i32 (i32, %struct.TYPE_5__*, ...) @vchiq_queue_message(i32 %45, %struct.TYPE_5__* %50, %struct.TYPE_5__* %51, i32 %52)
  ret void
}

declare dso_local i32 @vchiq_queue_message(i32, %struct.TYPE_5__*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
