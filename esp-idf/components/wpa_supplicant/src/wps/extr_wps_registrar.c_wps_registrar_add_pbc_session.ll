; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_add_pbc_session.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_registrar_add_pbc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.wps_pbc_session* }
%struct.wps_pbc_session = type { %struct.wps_pbc_session*, %struct.os_time, i32, i32 }
%struct.os_time = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WPS_UUID_LEN = common dso_local global i32 0, align 4
@WPS_PBC_WALK_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_registrar*, i32*, i32*)* @wps_registrar_add_pbc_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_registrar_add_pbc_session(%struct.wps_registrar* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.wps_registrar*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.wps_pbc_session*, align 8
  %8 = alloca %struct.wps_pbc_session*, align 8
  %9 = alloca %struct.os_time, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store %struct.wps_pbc_session* null, %struct.wps_pbc_session** %8, align 8
  %10 = call i32 @os_get_time(%struct.os_time* %9)
  %11 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %12 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %11, i32 0, i32 0
  %13 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %12, align 8
  store %struct.wps_pbc_session* %13, %struct.wps_pbc_session** %7, align 8
  br label %14

14:                                               ; preds = %49, %3
  %15 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %16 = icmp ne %struct.wps_pbc_session* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %14
  %18 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %19 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = call i64 @os_memcmp(i32 %20, i32* %21, i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %17
  %26 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %27 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @WPS_UUID_LEN, align 4
  %31 = call i64 @os_memcmp(i32 %28, i32* %29, i32 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %25
  %34 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %8, align 8
  %35 = icmp ne %struct.wps_pbc_session* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %33
  %37 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %38 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %37, i32 0, i32 0
  %39 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %38, align 8
  %40 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %8, align 8
  %41 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %40, i32 0, i32 0
  store %struct.wps_pbc_session* %39, %struct.wps_pbc_session** %41, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %44 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %43, i32 0, i32 0
  %45 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %44, align 8
  %46 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %47 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %46, i32 0, i32 0
  store %struct.wps_pbc_session* %45, %struct.wps_pbc_session** %47, align 8
  br label %48

48:                                               ; preds = %42, %36
  br label %54

49:                                               ; preds = %25, %17
  %50 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  store %struct.wps_pbc_session* %50, %struct.wps_pbc_session** %8, align 8
  %51 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %52 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %51, i32 0, i32 0
  %53 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %52, align 8
  store %struct.wps_pbc_session* %53, %struct.wps_pbc_session** %7, align 8
  br label %14

54:                                               ; preds = %48, %14
  %55 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %56 = icmp ne %struct.wps_pbc_session* %55, null
  br i1 %56, label %80, label %57

57:                                               ; preds = %54
  %58 = call i64 @os_zalloc(i32 24)
  %59 = inttoptr i64 %58 to %struct.wps_pbc_session*
  store %struct.wps_pbc_session* %59, %struct.wps_pbc_session** %7, align 8
  %60 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %61 = icmp eq %struct.wps_pbc_session* %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %120

63:                                               ; preds = %57
  %64 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %65 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** %5, align 8
  %68 = load i32, i32* @ETH_ALEN, align 4
  %69 = call i32 @os_memcpy(i32 %66, i32* %67, i32 %68)
  %70 = load i32*, i32** %6, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %79

72:                                               ; preds = %63
  %73 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %74 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = load i32, i32* @WPS_UUID_LEN, align 4
  %78 = call i32 @os_memcpy(i32 %75, i32* %76, i32 %77)
  br label %79

79:                                               ; preds = %72, %63
  br label %80

80:                                               ; preds = %79, %54
  %81 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %82 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %81, i32 0, i32 0
  %83 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %82, align 8
  %84 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %85 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %84, i32 0, i32 0
  store %struct.wps_pbc_session* %83, %struct.wps_pbc_session** %85, align 8
  %86 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %87 = load %struct.wps_registrar*, %struct.wps_registrar** %4, align 8
  %88 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %87, i32 0, i32 0
  store %struct.wps_pbc_session* %86, %struct.wps_pbc_session** %88, align 8
  %89 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %90 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %89, i32 0, i32 1
  %91 = bitcast %struct.os_time* %90 to i8*
  %92 = bitcast %struct.os_time* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 8, i1 false)
  %93 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  store %struct.wps_pbc_session* %93, %struct.wps_pbc_session** %8, align 8
  %94 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %95 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %94, i32 0, i32 0
  %96 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %95, align 8
  store %struct.wps_pbc_session* %96, %struct.wps_pbc_session** %7, align 8
  br label %97

97:                                               ; preds = %115, %80
  %98 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %99 = icmp ne %struct.wps_pbc_session* %98, null
  br i1 %99, label %100, label %120

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.os_time, %struct.os_time* %9, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %104 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.os_time, %struct.os_time* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @WPS_PBC_WALK_TIME, align 8
  %108 = add nsw i64 %106, %107
  %109 = icmp sgt i64 %102, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %100
  %111 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %8, align 8
  %112 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %111, i32 0, i32 0
  store %struct.wps_pbc_session* null, %struct.wps_pbc_session** %112, align 8
  %113 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %114 = call i32 @wps_free_pbc_sessions(%struct.wps_pbc_session* %113)
  br label %120

115:                                              ; preds = %100
  %116 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  store %struct.wps_pbc_session* %116, %struct.wps_pbc_session** %8, align 8
  %117 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %7, align 8
  %118 = getelementptr inbounds %struct.wps_pbc_session, %struct.wps_pbc_session* %117, i32 0, i32 0
  %119 = load %struct.wps_pbc_session*, %struct.wps_pbc_session** %118, align 8
  store %struct.wps_pbc_session* %119, %struct.wps_pbc_session** %7, align 8
  br label %97

120:                                              ; preds = %62, %110, %97
  ret void
}

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i64 @os_memcmp(i32, i32*, i32) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wps_free_pbc_sessions(%struct.wps_pbc_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
