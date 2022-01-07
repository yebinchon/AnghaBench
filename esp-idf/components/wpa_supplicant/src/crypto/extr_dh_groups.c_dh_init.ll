; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_dh_groups.c_dh_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/crypto/extr_dh_groups.c_dh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dh_group = type { i64, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"DH: private value\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DH: crypto_mod_exp failed\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"DH: public value\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @dh_init(%struct.dh_group* %0, %struct.wpabuf** %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.dh_group*, align 8
  %5 = alloca %struct.wpabuf**, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i64, align 8
  store %struct.dh_group* %0, %struct.dh_group** %4, align 8
  store %struct.wpabuf** %1, %struct.wpabuf*** %5, align 8
  %8 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %9 = icmp eq %struct.dh_group* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %106

11:                                               ; preds = %2
  %12 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %13 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %14 = call i32 @wpabuf_free(%struct.wpabuf* %13)
  %15 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %16 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.wpabuf* @wpabuf_alloc(i64 %17)
  %19 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* %18, %struct.wpabuf** %19, align 8
  %20 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %20, align 8
  %22 = icmp eq %struct.wpabuf* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %106

24:                                               ; preds = %11
  %25 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %26 = load %struct.wpabuf*, %struct.wpabuf** %25, align 8
  %27 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %28 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @wpabuf_put(%struct.wpabuf* %26, i64 %29)
  %31 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %32 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @random_get_bytes(i32 %30, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %37, align 8
  %39 = call i32 @wpabuf_free(%struct.wpabuf* %38)
  %40 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %40, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %106

41:                                               ; preds = %24
  %42 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %43 = load %struct.wpabuf*, %struct.wpabuf** %42, align 8
  %44 = call i32 @wpabuf_head(%struct.wpabuf* %43)
  %45 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %46 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %49 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @os_memcmp(i32 %44, i32 %47, i64 %50)
  %52 = icmp sgt i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %54, align 8
  %56 = call i64* @wpabuf_mhead_u8(%struct.wpabuf* %55)
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %53, %41
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %60 = load %struct.wpabuf*, %struct.wpabuf** %59, align 8
  %61 = call i32 @wpa_hexdump_buf_key(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.wpabuf* %60)
  %62 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %63 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  %66 = call %struct.wpabuf* @wpabuf_alloc(i64 %65)
  store %struct.wpabuf* %66, %struct.wpabuf** %6, align 8
  %67 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %68 = icmp eq %struct.wpabuf* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %106

70:                                               ; preds = %57
  %71 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %72 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %75 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %78 = load %struct.wpabuf*, %struct.wpabuf** %77, align 8
  %79 = call i32 @wpabuf_head(%struct.wpabuf* %78)
  %80 = load %struct.wpabuf**, %struct.wpabuf*** %5, align 8
  %81 = load %struct.wpabuf*, %struct.wpabuf** %80, align 8
  %82 = call i32 @wpabuf_len(%struct.wpabuf* %81)
  %83 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %84 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.dh_group*, %struct.dh_group** %4, align 8
  %87 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %90 = call i32 @wpabuf_mhead(%struct.wpabuf* %89)
  %91 = call i64 @crypto_mod_exp(i32 %73, i32 %76, i32 %79, i32 %82, i32 %85, i64 %88, i32 %90, i64* %7)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %70
  %94 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %95 = call i32 @wpabuf_free(%struct.wpabuf* %94)
  %96 = load i32, i32* @MSG_INFO, align 4
  %97 = call i32 @wpa_printf(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %106

98:                                               ; preds = %70
  %99 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @wpabuf_put(%struct.wpabuf* %99, i64 %100)
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %104 = call i32 @wpa_hexdump_buf(i32 %102, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), %struct.wpabuf* %103)
  %105 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %105, %struct.wpabuf** %3, align 8
  br label %106

106:                                              ; preds = %98, %93, %69, %36, %23, %10
  %107 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %107
}

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @random_get_bytes(i32, i64) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i64) #1

declare dso_local i64 @os_memcmp(i32, i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64* @wpabuf_mhead_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_buf_key(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @crypto_mod_exp(i32, i32, i32, i32, i32, i64, i32, i64*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
