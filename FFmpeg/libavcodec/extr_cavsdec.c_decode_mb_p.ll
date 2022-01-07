; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_mb_p.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdec.c_decode_mb_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, i64, i32, i32 }

@MV_FWD_X0 = common dso_local global i32 0, align 4
@MV_FWD_C2 = common dso_local global i32 0, align 4
@MV_PRED_PSKIP = common dso_local global i32 0, align 4
@BLK_16X16 = common dso_local global i32 0, align 4
@MV_PRED_MEDIAN = common dso_local global i32 0, align 4
@MV_PRED_TOP = common dso_local global i32 0, align 4
@BLK_16X8 = common dso_local global i32 0, align 4
@MV_FWD_X2 = common dso_local global i32 0, align 4
@MV_FWD_A1 = common dso_local global i32 0, align 4
@MV_PRED_LEFT = common dso_local global i32 0, align 4
@MV_FWD_B3 = common dso_local global i32 0, align 4
@BLK_8X16 = common dso_local global i32 0, align 4
@MV_FWD_X1 = common dso_local global i32 0, align 4
@MV_PRED_TOPRIGHT = common dso_local global i32 0, align 4
@BLK_8X8 = common dso_local global i32 0, align 4
@MV_FWD_X3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, i32)* @decode_mb_p to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_mb_p(%struct.TYPE_10__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [4 x i32], align 16
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  store i32* %8, i32** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = call i32 @ff_cavs_init_mb(%struct.TYPE_10__* %9)
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %194 [
    i32 128, label %12
    i32 132, label %19
    i32 131, label %39
    i32 130, label %78
    i32 129, label %117
  ]

12:                                               ; preds = %2
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load i32, i32* @MV_FWD_X0, align 4
  %15 = load i32, i32* @MV_FWD_C2, align 4
  %16 = load i32, i32* @MV_PRED_PSKIP, align 4
  %17 = load i32, i32* @BLK_16X16, align 4
  %18 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 0)
  br label %194

19:                                               ; preds = %2
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %28

25:                                               ; preds = %19
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @get_bits1(i32* %26)
  br label %28

28:                                               ; preds = %25, %24
  %29 = phi i32 [ 0, %24 ], [ %27, %25 ]
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %29, i32* %30, align 16
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %32 = load i32, i32* @MV_FWD_X0, align 4
  %33 = load i32, i32* @MV_FWD_C2, align 4
  %34 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %35 = load i32, i32* @BLK_16X16, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %31, i32 %32, i32 %33, i32 %34, i32 %35, i32 %37)
  br label %194

39:                                               ; preds = %2
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %48

45:                                               ; preds = %39
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @get_bits1(i32* %46)
  br label %48

48:                                               ; preds = %45, %44
  %49 = phi i32 [ 0, %44 ], [ %47, %45 ]
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %48
  br label %59

56:                                               ; preds = %48
  %57 = load i32*, i32** %5, align 8
  %58 = call i32 @get_bits1(i32* %57)
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %60, i32* %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %63 = load i32, i32* @MV_FWD_X0, align 4
  %64 = load i32, i32* @MV_FWD_C2, align 4
  %65 = load i32, i32* @MV_PRED_TOP, align 4
  %66 = load i32, i32* @BLK_16X8, align 4
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %68 = load i32, i32* %67, align 16
  %69 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %62, i32 %63, i32 %64, i32 %65, i32 %66, i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = load i32, i32* @MV_FWD_X2, align 4
  %72 = load i32, i32* @MV_FWD_A1, align 4
  %73 = load i32, i32* @MV_PRED_LEFT, align 4
  %74 = load i32, i32* @BLK_16X8, align 4
  %75 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %76)
  br label %194

78:                                               ; preds = %2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %87

84:                                               ; preds = %78
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @get_bits1(i32* %85)
  br label %87

87:                                               ; preds = %84, %83
  %88 = phi i32 [ 0, %83 ], [ %86, %84 ]
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %88, i32* %89, align 16
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %98

95:                                               ; preds = %87
  %96 = load i32*, i32** %5, align 8
  %97 = call i32 @get_bits1(i32* %96)
  br label %98

98:                                               ; preds = %95, %94
  %99 = phi i32 [ 0, %94 ], [ %97, %95 ]
  %100 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %99, i32* %100, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %102 = load i32, i32* @MV_FWD_X0, align 4
  %103 = load i32, i32* @MV_FWD_B3, align 4
  %104 = load i32, i32* @MV_PRED_LEFT, align 4
  %105 = load i32, i32* @BLK_8X16, align 4
  %106 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %107 = load i32, i32* %106, align 16
  %108 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %101, i32 %102, i32 %103, i32 %104, i32 %105, i32 %107)
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %110 = load i32, i32* @MV_FWD_X1, align 4
  %111 = load i32, i32* @MV_FWD_C2, align 4
  %112 = load i32, i32* @MV_PRED_TOPRIGHT, align 4
  %113 = load i32, i32* @BLK_8X16, align 4
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %109, i32 %110, i32 %111, i32 %112, i32 %113, i32 %115)
  br label %194

117:                                              ; preds = %2
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %126

123:                                              ; preds = %117
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @get_bits1(i32* %124)
  br label %126

126:                                              ; preds = %123, %122
  %127 = phi i32 [ 0, %122 ], [ %125, %123 ]
  %128 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %127, i32* %128, align 16
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %137

134:                                              ; preds = %126
  %135 = load i32*, i32** %5, align 8
  %136 = call i32 @get_bits1(i32* %135)
  br label %137

137:                                              ; preds = %134, %133
  %138 = phi i32 [ 0, %133 ], [ %136, %134 ]
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %138, i32* %139, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %137
  br label %148

145:                                              ; preds = %137
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @get_bits1(i32* %146)
  br label %148

148:                                              ; preds = %145, %144
  %149 = phi i32 [ 0, %144 ], [ %147, %145 ]
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %149, i32* %150, align 8
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %148
  br label %159

156:                                              ; preds = %148
  %157 = load i32*, i32** %5, align 8
  %158 = call i32 @get_bits1(i32* %157)
  br label %159

159:                                              ; preds = %156, %155
  %160 = phi i32 [ 0, %155 ], [ %158, %156 ]
  %161 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %160, i32* %161, align 4
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %163 = load i32, i32* @MV_FWD_X0, align 4
  %164 = load i32, i32* @MV_FWD_B3, align 4
  %165 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %166 = load i32, i32* @BLK_8X8, align 4
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %168)
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = load i32, i32* @MV_FWD_X1, align 4
  %172 = load i32, i32* @MV_FWD_C2, align 4
  %173 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %174 = load i32, i32* @BLK_8X8, align 4
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %170, i32 %171, i32 %172, i32 %173, i32 %174, i32 %176)
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %179 = load i32, i32* @MV_FWD_X2, align 4
  %180 = load i32, i32* @MV_FWD_X1, align 4
  %181 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %182 = load i32, i32* @BLK_8X8, align 4
  %183 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %178, i32 %179, i32 %180, i32 %181, i32 %182, i32 %184)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %187 = load i32, i32* @MV_FWD_X3, align 4
  %188 = load i32, i32* @MV_FWD_X0, align 4
  %189 = load i32, i32* @MV_PRED_MEDIAN, align 4
  %190 = load i32, i32* @BLK_8X8, align 4
  %191 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @ff_cavs_mv(%struct.TYPE_10__* %186, i32 %187, i32 %188, i32 %189, i32 %190, i32 %192)
  br label %194

194:                                              ; preds = %159, %2, %98, %59, %28, %12
  %195 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %196 = load i32, i32* %4, align 4
  %197 = call i32 @ff_cavs_inter(%struct.TYPE_10__* %195, i32 %196)
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %199 = call i32 @set_intra_mode_default(%struct.TYPE_10__* %198)
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %201 = call i32 @store_mvs(%struct.TYPE_10__* %200)
  %202 = load i32, i32* %4, align 4
  %203 = icmp ne i32 %202, 128
  br i1 %203, label %204, label %207

204:                                              ; preds = %194
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %206 = call i32 @decode_residual_inter(%struct.TYPE_10__* %205)
  br label %207

207:                                              ; preds = %204, %194
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %209 = load i32, i32* %4, align 4
  %210 = call i32 @ff_cavs_filter(%struct.TYPE_10__* %208, i32 %209)
  %211 = load i32, i32* %4, align 4
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %211, i32* %218, align 4
  ret void
}

declare dso_local i32 @ff_cavs_init_mb(%struct.TYPE_10__*) #1

declare dso_local i32 @ff_cavs_mv(%struct.TYPE_10__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @ff_cavs_inter(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @set_intra_mode_default(%struct.TYPE_10__*) #1

declare dso_local i32 @store_mvs(%struct.TYPE_10__*) #1

declare dso_local i32 @decode_residual_inter(%struct.TYPE_10__*) #1

declare dso_local i32 @ff_cavs_filter(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
