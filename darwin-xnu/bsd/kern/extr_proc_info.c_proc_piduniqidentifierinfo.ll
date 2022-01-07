; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_piduniqidentifierinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_proc_piduniqidentifierinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc_uniqidentifierinfo = type { i64, i64, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_piduniqidentifierinfo(i32 %0, %struct.proc_uniqidentifierinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc_uniqidentifierinfo*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.proc_uniqidentifierinfo* %1, %struct.proc_uniqidentifierinfo** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @proc_uniqueid(i32 %5)
  %7 = load %struct.proc_uniqidentifierinfo*, %struct.proc_uniqidentifierinfo** %4, align 8
  %8 = getelementptr inbounds %struct.proc_uniqidentifierinfo, %struct.proc_uniqidentifierinfo* %7, i32 0, i32 5
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.proc_uniqidentifierinfo*, %struct.proc_uniqidentifierinfo** %4, align 8
  %11 = getelementptr inbounds %struct.proc_uniqidentifierinfo, %struct.proc_uniqidentifierinfo* %10, i32 0, i32 4
  %12 = bitcast i32* %11 to i8*
  %13 = call i32 @proc_getexecutableuuid(i32 %9, i8* %12, i32 4)
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @proc_puniqueid(i32 %14)
  %16 = load %struct.proc_uniqidentifierinfo*, %struct.proc_uniqidentifierinfo** %4, align 8
  %17 = getelementptr inbounds %struct.proc_uniqidentifierinfo, %struct.proc_uniqidentifierinfo* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.proc_uniqidentifierinfo*, %struct.proc_uniqidentifierinfo** %4, align 8
  %19 = getelementptr inbounds %struct.proc_uniqidentifierinfo, %struct.proc_uniqidentifierinfo* %18, i32 0, i32 2
  store i64 0, i64* %19, align 8
  %20 = load %struct.proc_uniqidentifierinfo*, %struct.proc_uniqidentifierinfo** %4, align 8
  %21 = getelementptr inbounds %struct.proc_uniqidentifierinfo, %struct.proc_uniqidentifierinfo* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.proc_uniqidentifierinfo*, %struct.proc_uniqidentifierinfo** %4, align 8
  %23 = getelementptr inbounds %struct.proc_uniqidentifierinfo, %struct.proc_uniqidentifierinfo* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  ret void
}

declare dso_local i32 @proc_uniqueid(i32) #1

declare dso_local i32 @proc_getexecutableuuid(i32, i8*, i32) #1

declare dso_local i32 @proc_puniqueid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
