; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_install_gtk.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/rsn_supp/extr_wpa.c_wpa_supplicant_install_gtk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.wpa_gtk_data = type { i32, i32, i32, i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"WPA: Group Key\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"WPA: RSC\00", align 1
@WPA_CIPHER_TKIP = common dso_local global i64 0, align 8
@WPA_CIPHER_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_supplicant_install_gtk(%struct.wpa_sm* %0, %struct.wpa_gtk_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_sm*, align 8
  %5 = alloca %struct.wpa_gtk_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [32 x i32], align 16
  %8 = alloca i32*, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %4, align 8
  store %struct.wpa_gtk_data* %1, %struct.wpa_gtk_data** %5, align 8
  %9 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %10 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %13 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %21 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @wpa_hexdump(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %19, i32 %22)
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load i32*, i32** %8, align 8
  %26 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %27 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @wpa_hexdump(i32 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %25, i32 %28)
  %30 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %31 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WPA_CIPHER_TKIP, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %56

35:                                               ; preds = %2
  %36 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %37 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %38 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @memcpy(i32* %36, i32* %39, i32 16)
  %41 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %42 = getelementptr inbounds i32, i32* %41, i64 16
  %43 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 16
  %47 = call i32 @memcpy(i32* %42, i32* %46, i32 8)
  %48 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %49 = getelementptr inbounds i32, i32* %48, i64 24
  %50 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %51 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 24
  %54 = call i32 @memcpy(i32* %49, i32* %53, i32 8)
  %55 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  store i32* %55, i32** %6, align 8
  br label %56

56:                                               ; preds = %35, %2
  %57 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %58 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %63 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WPA_CIPHER_NONE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %56
  %68 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %69 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %68, i32 0, i32 4
  %70 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %71 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %74 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %77 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %81 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %85 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %88 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @wpa_sm_set_key(%struct.TYPE_2__* %69, i32 %72, i32 %75, i32 %78, i32 1, i32* %79, i32 %82, i32* %83, i32 %86, i32 %89)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %125

93:                                               ; preds = %67
  br label %124

94:                                               ; preds = %56
  %95 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %96 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %95, i32 0, i32 4
  %97 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %98 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %101 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %104 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %107 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %111 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.wpa_gtk_data*, %struct.wpa_gtk_data** %5, align 8
  %115 = getelementptr inbounds %struct.wpa_gtk_data, %struct.wpa_gtk_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.wpa_sm*, %struct.wpa_sm** %4, align 8
  %118 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @wpa_sm_set_key(%struct.TYPE_2__* %96, i32 %99, i32 %102, i32 %105, i32 %108, i32* %109, i32 %112, i32* %113, i32 %116, i32 %119)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %125

123:                                              ; preds = %94
  br label %124

124:                                              ; preds = %123, %93
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %122, %92
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @wpa_sm_set_key(%struct.TYPE_2__*, i32, i32, i32, i32, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
