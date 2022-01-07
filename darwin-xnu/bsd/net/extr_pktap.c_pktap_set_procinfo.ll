; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pktap.c_pktap_set_procinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pktap.c_pktap_set_procinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktap_header = type { i64, i64*, i64, i64*, i32, i32, i32 }
%struct.so_procinfo = type { i64, i64, i64, i32, i32 }

@MAXCOMLEN = common dso_local global i32 0, align 4
@PTH_FLAG_PROC_DELEGATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktap_header*, %struct.so_procinfo*)* @pktap_set_procinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pktap_set_procinfo(%struct.pktap_header* %0, %struct.so_procinfo* %1) #0 {
  %3 = alloca %struct.pktap_header*, align 8
  %4 = alloca %struct.so_procinfo*, align 8
  store %struct.pktap_header* %0, %struct.pktap_header** %3, align 8
  store %struct.so_procinfo* %1, %struct.so_procinfo** %4, align 8
  %5 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %6 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %9 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %11 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %2
  %17 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %18 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %21 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* @MAXCOMLEN, align 4
  %24 = call i32 @proc_name(i64 %19, i64* %22, i32 %23)
  br label %25

25:                                               ; preds = %16, %2
  %26 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %27 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %32 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %35 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @uuid_copy(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %30, %25
  %39 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %40 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %77

43:                                               ; preds = %38
  %44 = load i32, i32* @PTH_FLAG_PROC_DELEGATED, align 4
  %45 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %46 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %50 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %53 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %55 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %54, i32 0, i32 3
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %43
  %61 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %62 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %65 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %64, i32 0, i32 3
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* @MAXCOMLEN, align 4
  %68 = call i32 @proc_name(i64 %63, i64* %66, i32 %67)
  br label %69

69:                                               ; preds = %60, %43
  %70 = load %struct.pktap_header*, %struct.pktap_header** %3, align 8
  %71 = getelementptr inbounds %struct.pktap_header, %struct.pktap_header* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %74 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @uuid_copy(i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %38
  ret void
}

declare dso_local i32 @proc_name(i64, i64*, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
