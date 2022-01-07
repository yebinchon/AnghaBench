; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write3.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image_write.h_stbiw__write3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 (i32, i8*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8, i8, i8)* @stbiw__write3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stbiw__write3(%struct.TYPE_3__* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca [3 x i8], align 1
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %10 = load i8, i8* %6, align 1
  %11 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  store i8 %10, i8* %11, align 1
  %12 = load i8, i8* %7, align 1
  %13 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 1
  store i8 %12, i8* %13, align 1
  %14 = load i8, i8* %8, align 1
  %15 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 2
  store i8 %14, i8* %15, align 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** %17, align 8
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %9, i64 0, i64 0
  %23 = call i32 %18(i32 %21, i8* %22, i32 3)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
