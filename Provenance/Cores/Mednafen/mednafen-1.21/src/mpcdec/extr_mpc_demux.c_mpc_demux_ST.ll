; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_ST.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/mpcdec/extr_mpc_demux.c_mpc_demux_ST.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@MPC_STATUS_OK = common dso_local global i32 0, align 4
@MPC_FRAME_LENGTH = common dso_local global i32 0, align 4
@MAX_SEEK_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @mpc_demux_ST to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc_demux_ST(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @MPC_STATUS_OK, align 4
  store i32 %21, i32* %2, align 4
  br label %194

22:                                               ; preds = %1
  %23 = call i32 @mpc_bits_get_size(i32* %7, i32* %4)
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mpc_bits_read(i32* %7, i32 4)
  %30 = add nsw i32 %28, %29
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %37, %40
  %42 = sdiv i32 %36, %41
  %43 = add nsw i32 2, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %48, %22
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @MAX_SEEK_TABLE_SIZE, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @MPC_FRAME_LENGTH, align 4
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %59, %62
  %64 = sdiv i32 %58, %63
  %65 = add nsw i32 2, %64
  store i32 %65, i32* %4, align 4
  br label %44

66:                                               ; preds = %44
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %9, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %76

72:                                               ; preds = %66
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* %9, align 4
  %75 = shl i32 %73, %74
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %72, %66
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = call i32* @malloc(i64 %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32* %80, i32** %82, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %9, align 4
  %85 = shl i32 1, %84
  %86 = sub nsw i32 %85, 1
  %87 = add nsw i32 %83, %86
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %87, %88
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  store i32* %94, i32** %5, align 8
  %95 = call i32 @mpc_bits_get_size(i32* %7, i32* %4)
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %97, %101
  %103 = trunc i64 %102 to i32
  %104 = mul nsw i32 %103, 8
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  store i32 %104, i32* %107, align 4
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %112, label %114

112:                                              ; preds = %76
  %113 = load i32, i32* @MPC_STATUS_OK, align 4
  store i32 %113, i32* %2, align 4
  br label %194

114:                                              ; preds = %76
  %115 = call i32 @mpc_bits_get_size(i32* %7, i32* %4)
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %117, %121
  %123 = trunc i64 %122 to i32
  %124 = mul nsw i32 %123, 8
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %114
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %5, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 %130, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %114
  %134 = load i32, i32* %9, align 4
  %135 = shl i32 1, %134
  %136 = sub nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  store i32 2, i32* %8, align 4
  br label %137

137:                                              ; preds = %189, %133
  %138 = load i32, i32* %8, align 4
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %138, %139
  br i1 %140, label %141, label %192

141:                                              ; preds = %137
  %142 = call i32 @mpc_bits_golomb_dec(i32* %7, i32 12)
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = and i32 %143, 1
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load i32, i32* %12, align 4
  %148 = and i32 %147, -2
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %12, align 4
  br label %150

150:                                              ; preds = %146, %141
  %151 = load i32, i32* %12, align 4
  %152 = shl i32 %151, 2
  store i32 %152, i32* %12, align 4
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %8, align 4
  %155 = sub nsw i32 %154, 1
  %156 = and i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = mul nsw i32 2, %159
  %161 = add nsw i32 %153, %160
  %162 = load i32, i32* %8, align 4
  %163 = and i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %161, %166
  %168 = load i32, i32* %8, align 4
  %169 = and i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %170
  store i32 %167, i32* %171, align 4
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* %10, align 4
  %174 = and i32 %172, %173
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %150
  %177 = load i32, i32* %8, align 4
  %178 = and i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* %9, align 4
  %185 = ashr i32 %183, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  store i32 %181, i32* %187, align 4
  br label %188

188:                                              ; preds = %176, %150
  br label %189

189:                                              ; preds = %188
  %190 = load i32, i32* %8, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %8, align 4
  br label %137

192:                                              ; preds = %137
  %193 = load i32, i32* @MPC_STATUS_OK, align 4
  store i32 %193, i32* %2, align 4
  br label %194

194:                                              ; preds = %192, %112, %20
  %195 = load i32, i32* %2, align 4
  ret i32 %195
}

declare dso_local i32 @mpc_bits_get_size(i32*, i32*) #1

declare dso_local i32 @mpc_bits_read(i32*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @mpc_bits_golomb_dec(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
