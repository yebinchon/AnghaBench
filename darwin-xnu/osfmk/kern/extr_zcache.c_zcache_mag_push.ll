; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_mag_push.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_zcache.c_zcache_mag_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zcc_magazine = type { i32, i8** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zcache_mag_push(%struct.zcc_magazine* %0, i8* %1) #0 {
  %3 = alloca %struct.zcc_magazine*, align 8
  %4 = alloca i8*, align 8
  store %struct.zcc_magazine* %0, %struct.zcc_magazine** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.zcc_magazine*, %struct.zcc_magazine** %3, align 8
  %6 = call i32 @zcache_mag_has_space(%struct.zcc_magazine* %5)
  %7 = call i32 @assert(i32 %6)
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.zcc_magazine*, %struct.zcc_magazine** %3, align 8
  %10 = getelementptr inbounds %struct.zcc_magazine, %struct.zcc_magazine* %9, i32 0, i32 1
  %11 = load i8**, i8*** %10, align 8
  %12 = load %struct.zcc_magazine*, %struct.zcc_magazine** %3, align 8
  %13 = getelementptr inbounds %struct.zcc_magazine, %struct.zcc_magazine* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8*, i8** %11, i64 %16
  store i8* %8, i8** %17, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zcache_mag_has_space(%struct.zcc_magazine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
