; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_mag_pop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_mag_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcc_magazine = type { i64, i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @zcache_mag_pop(%struct.zcc_magazine* %0) #0 {
  %2 = alloca %struct.zcc_magazine*, align 8
  %3 = alloca i8*, align 8
  store %struct.zcc_magazine* %0, %struct.zcc_magazine** %2, align 8
  %4 = load %struct.zcc_magazine*, %struct.zcc_magazine** %2, align 8
  %5 = call i32 @zcache_mag_has_elements(%struct.zcc_magazine* %4)
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.zcc_magazine*, %struct.zcc_magazine** %2, align 8
  %8 = getelementptr inbounds %struct.zcc_magazine, %struct.zcc_magazine* %7, i32 0, i32 1
  %9 = load i32**, i32*** %8, align 8
  %10 = load %struct.zcc_magazine*, %struct.zcc_magazine** %2, align 8
  %11 = getelementptr inbounds %struct.zcc_magazine, %struct.zcc_magazine* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, -1
  store i64 %13, i64* %11, align 8
  %14 = getelementptr inbounds i32*, i32** %9, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to i8*
  store i8* %16, i8** %3, align 8
  %17 = load %struct.zcc_magazine*, %struct.zcc_magazine** %2, align 8
  %18 = getelementptr inbounds %struct.zcc_magazine, %struct.zcc_magazine* %17, i32 0, i32 1
  %19 = load i32**, i32*** %18, align 8
  %20 = load %struct.zcc_magazine*, %struct.zcc_magazine** %2, align 8
  %21 = getelementptr inbounds %struct.zcc_magazine, %struct.zcc_magazine* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32*, i32** %19, i64 %22
  store i32* null, i32** %23, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = icmp ne i8* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i8*, i8** %3, align 8
  ret i8* %28
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zcache_mag_has_elements(%struct.zcc_magazine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
