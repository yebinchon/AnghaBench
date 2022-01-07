; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_process_subpacket_9.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qdm2.c_process_subpacket_9.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32***, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }

@coeff_per_sb_for_avg = common dso_local global i32** null, align 8
@vlc_tab_level = common dso_local global i32 0, align 4
@vlc_tab_run = common dso_local global i32 0, align 4
@vlc_tab_diff = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @process_subpacket_9 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_subpacket_9(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 8
  %26 = call i32 @init_get_bits(i32* %6, i32 %19, i32 %25)
  %27 = load i32**, i32*** @coeff_per_sb_for_avg, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @QDM2_SB_USED(i32 %35)
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %32, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  store i32 1, i32* %7, align 4
  br label %42

42:                                               ; preds = %124, %2
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %127

46:                                               ; preds = %42
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %120, %46
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %123

53:                                               ; preds = %47
  %54 = call i32 @qdm2_get_vlc(i32* %6, i32* @vlc_tab_level, i32 0, i32 2)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load i32***, i32**** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32**, i32*** %58, i64 %60
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %55, i32* %67, align 4
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %112, %53
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 7
  br i1 %70, label %71, label %119

71:                                               ; preds = %68
  %72 = call i32 @qdm2_get_vlc(i32* %6, i32* @vlc_tab_run, i32 0, i32 1)
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = call i32 @qdm2_get_se_vlc(i32* @vlc_tab_diff, i32* %6, i32 2)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %75, %76
  %78 = icmp sge i32 %77, 8
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  store i32 -1, i32* %3, align 4
  br label %159

80:                                               ; preds = %71
  store i32 1, i32* %9, align 4
  br label %81

81:                                               ; preds = %109, %80
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp sle i32 %82, %83
  br i1 %84, label %85, label %112

85:                                               ; preds = %81
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %14, align 4
  %89 = mul nsw i32 %87, %88
  %90 = load i32, i32* %12, align 4
  %91 = sdiv i32 %89, %90
  %92 = add nsw i32 %86, %91
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 2
  %95 = load i32***, i32**** %94, align 8
  %96 = load i32, i32* %11, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32**, i32*** %95, i64 %97
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32 %92, i32* %108, align 4
  br label %109

109:                                              ; preds = %85
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  br label %81

112:                                              ; preds = %81
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %8, align 4
  br label %68

119:                                              ; preds = %68
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %11, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %11, align 4
  br label %47

123:                                              ; preds = %47
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %7, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %7, align 4
  br label %42

127:                                              ; preds = %42
  store i32 0, i32* %11, align 4
  br label %128

128:                                              ; preds = %155, %127
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %129, %132
  br i1 %133, label %134, label %158

134:                                              ; preds = %128
  store i32 0, i32* %7, align 4
  br label %135

135:                                              ; preds = %151, %134
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 8
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load i32***, i32**** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32**, i32*** %141, i64 %143
  %145 = load i32**, i32*** %144, align 8
  %146 = getelementptr inbounds i32*, i32** %145, i64 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %7, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  store i32 0, i32* %150, align 4
  br label %151

151:                                              ; preds = %138
  %152 = load i32, i32* %7, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %135

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %11, align 4
  br label %128

158:                                              ; preds = %128
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %79
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i32 @QDM2_SB_USED(i32) #1

declare dso_local i32 @qdm2_get_vlc(i32*, i32*, i32, i32) #1

declare dso_local i32 @qdm2_get_se_vlc(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
