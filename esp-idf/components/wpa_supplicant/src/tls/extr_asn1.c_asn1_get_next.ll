; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_asn1.c_asn1_get_next.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_asn1.c_asn1_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asn1_hdr = type { i32, i32, i32, i32, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ASN.1: Identifier underflow\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"ASN.1: Extended tag data: 0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"ASN.1: Reserved length value 0xff used\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"ASN.1: Too long length field\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"ASN.1: Length underflow\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"ASN.1: Contents underflow\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asn1_get_next(i32* %0, i64 %1, %struct.asn1_hdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.asn1_hdr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.asn1_hdr* %2, %struct.asn1_hdr** %7, align 8
  %11 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %12 = call i32 @os_memset(%struct.asn1_hdr* %11, i32 0, i32 32)
  %13 = load i32*, i32** %5, align 8
  store i32* %13, i32** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i64, i64* %6, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %8, align 8
  %19 = load i32, i32* %17, align 4
  %20 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %21 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %23 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = ashr i32 %24, 6
  %26 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %27 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, 32
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, 31
  %42 = icmp eq i32 %41, 31
  br i1 %42, label %43, label %74

43:                                               ; preds = %3
  %44 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %45 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %44, i32 0, i32 3
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %69, %43
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp uge i32* %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %155

53:                                               ; preds = %46
  %54 = load i32*, i32** %8, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %8, align 8
  %56 = load i32, i32* %54, align 4
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %61 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 7
  %64 = load i32, i32* %10, align 4
  %65 = and i32 %64, 127
  %66 = or i32 %63, %65
  %67 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %53
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 128
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %46, label %73

73:                                               ; preds = %69
  br label %81

74:                                               ; preds = %3
  %75 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %76 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 31
  %79 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %80 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %79, i32 0, i32 3
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %74, %73
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %8, align 8
  %84 = load i32, i32* %82, align 4
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 128
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %128

88:                                               ; preds = %81
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 255
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %155

94:                                               ; preds = %88
  %95 = load i32, i32* %10, align 4
  %96 = and i32 %95, 127
  store i32 %96, i32* %10, align 4
  %97 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %98 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %97, i32 0, i32 4
  store i32 0, i32* %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %99, 4
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load i32, i32* @MSG_DEBUG, align 4
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %102, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %155

104:                                              ; preds = %94
  br label %105

105:                                              ; preds = %116, %104
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %10, align 4
  %108 = icmp ne i32 %106, 0
  br i1 %108, label %109, label %127

109:                                              ; preds = %105
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = icmp uge i32* %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %109
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %155

116:                                              ; preds = %109
  %117 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %118 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 8
  %120 = shl i32 %119, 8
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %8, align 8
  %123 = load i32, i32* %121, align 4
  %124 = or i32 %120, %123
  %125 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %126 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  br label %105

127:                                              ; preds = %105
  br label %132

128:                                              ; preds = %81
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %131 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %128, %127
  %133 = load i32*, i32** %9, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = icmp ult i32* %133, %134
  br i1 %135, label %148, label %136

136:                                              ; preds = %132
  %137 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %138 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %9, align 8
  %141 = load i32*, i32** %8, align 8
  %142 = ptrtoint i32* %140 to i64
  %143 = ptrtoint i32* %141 to i64
  %144 = sub i64 %142, %143
  %145 = sdiv exact i64 %144, 4
  %146 = trunc i64 %145 to i32
  %147 = icmp ugt i32 %139, %146
  br i1 %147, label %148, label %151

148:                                              ; preds = %136, %132
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %155

151:                                              ; preds = %136
  %152 = load i32*, i32** %8, align 8
  %153 = load %struct.asn1_hdr*, %struct.asn1_hdr** %7, align 8
  %154 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %153, i32 0, i32 5
  store i32* %152, i32** %154, align 8
  store i32 0, i32* %4, align 4
  br label %155

155:                                              ; preds = %151, %148, %113, %101, %91, %50
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i32 @os_memset(%struct.asn1_hdr*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
