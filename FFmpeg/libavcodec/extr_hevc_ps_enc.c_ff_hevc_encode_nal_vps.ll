; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps_enc.c_ff_hevc_encode_nal_vps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps_enc.c_ff_hevc_encode_nal_vps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Writing layer_id_included_flag\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Writing HRD parameters\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_hevc_encode_nal_vps(%struct.TYPE_3__* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @init_put_bits(i32* %10, i32* %13, i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @put_bits(i32* %10, i32 4, i32 %16)
  %18 = call i32 @put_bits(i32* %10, i32 2, i32 3)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sub nsw i32 %21, 1
  %23 = call i32 @put_bits(i32* %10, i32 6, i32 %22)
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i32 @put_bits(i32* %10, i32 3, i32 %27)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @put_bits(i32* %10, i32 1, i32 %31)
  %33 = call i32 @put_bits(i32* %10, i32 16, i32 65535)
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 15
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @write_ptl(i32* %10, i32* %35, i32 %38)
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @put_bits(i32* %10, i32 1, i32 %42)
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %4
  br label %54

49:                                               ; preds = %4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %52, 1
  br label %54

54:                                               ; preds = %49, %48
  %55 = phi i32 [ 0, %48 ], [ %53, %49 ]
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %89, %54
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %92

62:                                               ; preds = %56
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @set_ue_golomb(i32* %10, i32 %70)
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 5
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @set_ue_golomb(i32* %10, i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 6
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  %88 = call i32 @set_ue_golomb(i32* %10, i32 %87)
  br label %89

89:                                               ; preds = %62
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %11, align 4
  br label %56

92:                                               ; preds = %56
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @put_bits(i32* %10, i32 6, i32 %95)
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %99, 1
  %101 = call i32 @set_ue_golomb(i32* %10, i32 %100)
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp sgt i32 %104, 1
  br i1 %105, label %106, label %109

106:                                              ; preds = %92
  %107 = call i32 @avpriv_report_missing_feature(i32* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %108, i32* %5, align 4
  br label %162

109:                                              ; preds = %92
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 9
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @put_bits(i32* %10, i32 1, i32 %112)
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 9
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %154

118:                                              ; preds = %109
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 14
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @put_bits32(i32* %10, i32 %121)
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 13
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @put_bits32(i32* %10, i32 %125)
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @put_bits(i32* %10, i32 1, i32 %129)
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %118
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 8
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @set_ue_golomb(i32* %10, i32 %139)
  br label %141

141:                                              ; preds = %135, %118
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @set_ue_golomb(i32* %10, i32 %144)
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 12
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = call i32 @avpriv_report_missing_feature(i32* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %152, i32* %5, align 4
  br label %162

153:                                              ; preds = %141
  br label %154

154:                                              ; preds = %153, %109
  %155 = call i32 @put_bits(i32* %10, i32 1, i32 0)
  %156 = call i32 @put_bits(i32* %10, i32 1, i32 1)
  %157 = call i32 @avpriv_align_put_bits(i32* %10)
  %158 = call i32 @put_bits_count(i32* %10)
  %159 = sdiv i32 %158, 8
  store i32 %159, i32* %12, align 4
  %160 = call i32 @flush_put_bits(i32* %10)
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %154, %150, %106
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @init_put_bits(i32*, i32*, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @write_ptl(i32*, i32*, i32) #1

declare dso_local i32 @set_ue_golomb(i32*, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32*, i8*) #1

declare dso_local i32 @put_bits32(i32*, i32) #1

declare dso_local i32 @avpriv_align_put_bits(i32*) #1

declare dso_local i32 @put_bits_count(i32*) #1

declare dso_local i32 @flush_put_bits(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
