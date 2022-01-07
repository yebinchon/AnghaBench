; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pktap.c_pktap_v2_set_procinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pktap.c_pktap_v2_set_procinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pktap_v2_hdr = type { i32, i64, i64, i32, i32, i64, i64 }
%struct.so_procinfo = type { i32, i64, i32, i32, i32 }

@PKTAP_MAX_COMM_SIZE = common dso_local global i32 0, align 4
@PTH_FLAG_PROC_DELEGATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pktap_v2_hdr*, %struct.so_procinfo*)* @pktap_v2_set_procinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pktap_v2_set_procinfo(%struct.pktap_v2_hdr* %0, %struct.so_procinfo* %1) #0 {
  %3 = alloca %struct.pktap_v2_hdr*, align 8
  %4 = alloca %struct.so_procinfo*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  store %struct.pktap_v2_hdr* %0, %struct.pktap_v2_hdr** %3, align 8
  store %struct.so_procinfo* %1, %struct.so_procinfo** %4, align 8
  %9 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %10 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %13 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %15 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %2
  %19 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %20 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %61

23:                                               ; preds = %18
  %24 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %25 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %30 = bitcast %struct.pktap_v2_hdr* %29 to i8*
  %31 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %32 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  store i8* %34, i8** %5, align 8
  %35 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %36 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i32, i32* @PKTAP_MAX_COMM_SIZE, align 4
  %40 = call i32 @proc_name(i32 %37, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %28, %23
  %42 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %43 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  %47 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %48 = bitcast %struct.pktap_v2_hdr* %47 to i8*
  %49 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %50 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  %53 = bitcast i8* %52 to i32*
  store i32* %53, i32** %6, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %57 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @uuid_copy(i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %46, %41
  br label %61

61:                                               ; preds = %60, %18, %2
  %62 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %63 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PTH_FLAG_PROC_DELEGATED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %132

69:                                               ; preds = %61
  %70 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %71 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %132

74:                                               ; preds = %69
  %75 = load i32, i32* @PTH_FLAG_PROC_DELEGATED, align 4
  %76 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %77 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %81 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %84 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %86 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %112

89:                                               ; preds = %74
  %90 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %91 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, -1
  br i1 %93, label %94, label %112

94:                                               ; preds = %89
  %95 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %96 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %94
  %100 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %101 = bitcast %struct.pktap_v2_hdr* %100 to i8*
  %102 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %103 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %102, i32 0, i32 5
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i8, i8* %101, i64 %104
  store i8* %105, i8** %7, align 8
  %106 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %107 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %7, align 8
  %110 = load i32, i32* @PKTAP_MAX_COMM_SIZE, align 4
  %111 = call i32 @proc_name(i32 %108, i8* %109, i32 %110)
  br label %112

112:                                              ; preds = %99, %94, %89, %74
  %113 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %114 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %119 = bitcast %struct.pktap_v2_hdr* %118 to i8*
  %120 = load %struct.pktap_v2_hdr*, %struct.pktap_v2_hdr** %3, align 8
  %121 = getelementptr inbounds %struct.pktap_v2_hdr, %struct.pktap_v2_hdr* %120, i32 0, i32 6
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = bitcast i8* %123 to i32*
  store i32* %124, i32** %8, align 8
  %125 = load i32*, i32** %8, align 8
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.so_procinfo*, %struct.so_procinfo** %4, align 8
  %128 = getelementptr inbounds %struct.so_procinfo, %struct.so_procinfo* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @uuid_copy(i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %117, %112
  br label %132

132:                                              ; preds = %68, %131, %69
  ret void
}

declare dso_local i32 @proc_name(i32, i8*, i32) #1

declare dso_local i32 @uuid_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
