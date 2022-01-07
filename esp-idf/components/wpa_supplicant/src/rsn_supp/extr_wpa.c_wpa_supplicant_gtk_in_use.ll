; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_gtk_in_use.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_gtk_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64* }
%struct.wpa_gtk_data = type { i32, i32, i32, i64* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"WPA: Group Key\00", align 1
@WPA_CIPHER_TKIP = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"GTK %d is already in use in entry %d, it may be an attack, ignor it.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_gtk_in_use(%struct.wpa_sm* %0, %struct.wpa_gtk_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_gtk_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [32 x i64], align 16
  %8 = alloca [32 x i64], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca [6 x i64], align 16
  %12 = alloca i32, align 4
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_gtk_data* %1, %struct.wpa_gtk_data** %5, align 8
  %13 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %14 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  store i64* %15, i64** %6, align 8
  %16 = bitcast [32 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 256, i1 false)
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %19 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @wpa_hexdump(i32 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %20, i32 %23)
  %25 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %26 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WPA_CIPHER_TKIP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %2
  %31 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %32 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %33 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %32, i32 0, i32 3
  %34 = load i64*, i64** %33, align 8
  %35 = call i32 @memcpy(i64* %31, i64* %34, i32 16)
  %36 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %37 = getelementptr inbounds i64, i64* %36, i64 16
  %38 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %39 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 16
  %42 = call i32 @memcpy(i64* %37, i64* %41, i32 8)
  %43 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %44 = getelementptr inbounds i64, i64* %43, i64 24
  %45 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %46 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %45, i32 0, i32 3
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 24
  %49 = call i32 @memcpy(i64* %44, i64* %48, i32 8)
  %50 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  store i64* %50, i64** %6, align 8
  br label %51

51:                                               ; preds = %30, %2
  %52 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 0
  %53 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %54 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %58 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @wpa_sm_get_key(i64* %9, i32* %10, i64* %52, i32* %12, i64* %53, i32 %56, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %98

62:                                               ; preds = %51
  %63 = load i64, i64* %9, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %97

65:                                               ; preds = %62
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %68 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %66, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 0
  %73 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %73, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* @ETH_ALEN, align 4
  %77 = call i64 @memcmp(i64* %72, i64* %75, i32 %76)
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %97

79:                                               ; preds = %71
  %80 = load i64*, i64** %6, align 8
  %81 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %82 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %83 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @memcmp(i64* %80, i64* %81, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %79
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %90 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %93 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 2
  %96 = call i32 @wpa_printf(i32 %88, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %91, i32 %95)
  store i32 1, i32* %3, align 4
  br label %150

97:                                               ; preds = %79, %71, %65, %62
  br label %98

98:                                               ; preds = %97, %51
  %99 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 0
  %100 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %101 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %102 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %105 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  %108 = srem i32 %107, 2
  %109 = call i64 @wpa_sm_get_key(i64* %9, i32* %10, i64* %99, i32* %12, i64* %100, i32 %103, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %149

111:                                              ; preds = %98
  %112 = load i64, i64* %9, align 8
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %114, label %148

114:                                              ; preds = %111
  %115 = load i32, i32* %10, align 4
  %116 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %117 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %115, %118
  br i1 %119, label %120, label %148

120:                                              ; preds = %114
  %121 = getelementptr inbounds [6 x i64], [6 x i64]* %11, i64 0, i64 0
  %122 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %123 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* @ETH_ALEN, align 4
  %126 = call i64 @memcmp(i64* %121, i64* %124, i32 %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %148

128:                                              ; preds = %120
  %129 = load i64*, i64** %6, align 8
  %130 = getelementptr inbounds [32 x i64], [32 x i64]* %8, i64 0, i64 0
  %131 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %132 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i64 @memcmp(i64* %129, i64* %130, i32 %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %148

136:                                              ; preds = %128
  %137 = load i32, i32* @MSG_DEBUG, align 4
  %138 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %139 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %142 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  %145 = srem i32 %144, 2
  %146 = add nsw i32 %145, 2
  %147 = call i32 @wpa_printf(i32 %137, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %140, i32 %146)
  store i32 1, i32* %3, align 4
  br label %150

148:                                              ; preds = %128, %120, %114, %111
  br label %149

149:                                              ; preds = %148, %98
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %136, %87
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #2

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i64 @wpa_sm_get_key(i64*, i32*, i64*, i32*, i64*, i32, i32) #2

declare dso_local i64 @memcmp(i64*, i64*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
