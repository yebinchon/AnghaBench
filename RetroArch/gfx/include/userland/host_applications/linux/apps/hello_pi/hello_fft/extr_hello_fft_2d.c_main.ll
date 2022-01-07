; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_hello_fft_2d.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/hello_pi/hello_fft/extr_hello_fft_2d.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.GPU_FFT_COMPLEX = type { i32, i32 }
%struct.GPU_FFT_TRANS = type { i32 }
%struct.GPU_FFT = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"hello_fft_2d.bmp\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@N = common dso_local global i32 0, align 4
@BI_RGB = common dso_local global i32 0, align 4
@log2_N = common dso_local global i32 0, align 4
@GPU_FFT_REV = common dso_local global i32 0, align 4
@in = common dso_local global i32 0, align 4
@out = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"1st FFT   %6d usecs\0ATranspose %6d usecs\0A2nd FFT   %6d usecs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca %struct.GPU_FFT_COMPLEX*, align 8
  %12 = alloca %struct.GPU_FFT_TRANS*, align 8
  %13 = alloca [2 x %struct.GPU_FFT*], align 16
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca %struct.TYPE_5__, align 4
  %16 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = call i32 (...) @mbox_open()
  store i32 %17, i32* %9, align 4
  %18 = call i32* @fopen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %18, i32** %16, align 8
  %19 = load i32*, i32** %16, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 -666, i32* %3, align 4
  br label %230

22:                                               ; preds = %2
  %23 = call i32 @memset(%struct.TYPE_5__* %14, i32 0, i32 36)
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  store i32 19778, i32* %24, align 4
  %25 = load i32, i32* @N, align 4
  %26 = load i32, i32* @N, align 4
  %27 = mul nsw i32 %25, %26
  %28 = mul nsw i32 %27, 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  store i32 72, i32* %30, align 4
  %31 = load i32*, i32** %16, align 8
  %32 = call i32 @fwrite(%struct.TYPE_5__* %14, i32 36, i32 1, i32* %31)
  %33 = call i32 @memset(%struct.TYPE_5__* %15, i32 0, i32 36)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 3
  store i32 36, i32* %34, align 4
  %35 = load i32, i32* @N, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 4
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* @N, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 5
  store i32 %37, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 6
  store i32 1, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 7
  store i32 24, i32* %40, align 4
  %41 = load i32, i32* @BI_RGB, align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %16, align 8
  %44 = call i32 @fwrite(%struct.TYPE_5__* %15, i32 36, i32 1, i32* %43)
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @log2_N, align 4
  %47 = load i32, i32* @GPU_FFT_REV, align 4
  %48 = load i32, i32* @N, align 4
  %49 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %50 = getelementptr inbounds %struct.GPU_FFT*, %struct.GPU_FFT** %49, i64 0
  %51 = call i32 @gpu_fft_prepare(i32 %45, i32 %46, i32 %47, i32 %48, %struct.GPU_FFT** %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %22
  %55 = load i32, i32* %8, align 4
  store i32 %55, i32* %3, align 4
  br label %230

56:                                               ; preds = %22
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @log2_N, align 4
  %59 = load i32, i32* @GPU_FFT_REV, align 4
  %60 = load i32, i32* @N, align 4
  %61 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %62 = getelementptr inbounds %struct.GPU_FFT*, %struct.GPU_FFT** %61, i64 1
  %63 = call i32 @gpu_fft_prepare(i32 %57, i32 %58, i32 %59, i32 %60, %struct.GPU_FFT** %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %68 = load %struct.GPU_FFT*, %struct.GPU_FFT** %67, align 16
  %69 = call i32 @gpu_fft_release(%struct.GPU_FFT* %68)
  %70 = load i32, i32* %8, align 4
  store i32 %70, i32* %3, align 4
  br label %230

71:                                               ; preds = %56
  %72 = load i32, i32* %9, align 4
  %73 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %74 = load %struct.GPU_FFT*, %struct.GPU_FFT** %73, align 16
  %75 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 1
  %76 = load %struct.GPU_FFT*, %struct.GPU_FFT** %75, align 8
  %77 = call i32 @gpu_fft_trans_prepare(i32 %72, %struct.GPU_FFT* %74, %struct.GPU_FFT* %76, %struct.GPU_FFT_TRANS** %12)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %71
  %81 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %82 = load %struct.GPU_FFT*, %struct.GPU_FFT** %81, align 16
  %83 = call i32 @gpu_fft_release(%struct.GPU_FFT* %82)
  %84 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 1
  %85 = load %struct.GPU_FFT*, %struct.GPU_FFT** %84, align 8
  %86 = call i32 @gpu_fft_release(%struct.GPU_FFT* %85)
  %87 = load i32, i32* %8, align 4
  store i32 %87, i32* %3, align 4
  br label %230

88:                                               ; preds = %71
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %118, %88
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @N, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %89
  %94 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %95 = load %struct.GPU_FFT*, %struct.GPU_FFT** %94, align 16
  %96 = load i32, i32* @in, align 4
  %97 = load i32, i32* %7, align 4
  %98 = call %struct.GPU_FFT_COMPLEX* @GPU_FFT_ROW(%struct.GPU_FFT* %95, i32 %96, i32 %97)
  store %struct.GPU_FFT_COMPLEX* %98, %struct.GPU_FFT_COMPLEX** %11, align 8
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %114, %93
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @N, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %11, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %104, i64 %106
  %108 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %107, i32 0, i32 1
  store i32 0, i32* %108, align 4
  %109 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %11, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %109, i64 %111
  %113 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %112, i32 0, i32 0
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %103
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %99

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %7, align 4
  br label %89

121:                                              ; preds = %89
  %122 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %123 = load %struct.GPU_FFT*, %struct.GPU_FFT** %122, align 16
  %124 = load i32, i32* @in, align 4
  %125 = call %struct.GPU_FFT_COMPLEX* @GPU_FFT_ROW(%struct.GPU_FFT* %123, i32 %124, i32 2)
  %126 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %125, i64 2
  %127 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %126, i32 0, i32 0
  store i32 60, i32* %127, align 4
  %128 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %129 = load %struct.GPU_FFT*, %struct.GPU_FFT** %128, align 16
  %130 = load i32, i32* @in, align 4
  %131 = load i32, i32* @N, align 4
  %132 = sub nsw i32 %131, 2
  %133 = call %struct.GPU_FFT_COMPLEX* @GPU_FFT_ROW(%struct.GPU_FFT* %129, i32 %130, i32 %132)
  %134 = load i32, i32* @N, align 4
  %135 = sub nsw i32 %134, 2
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %133, i64 %136
  %138 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %137, i32 0, i32 0
  store i32 60, i32* %138, align 4
  %139 = call i32 @usleep(i32 1)
  %140 = call i32 (...) @Microseconds()
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %140, i32* %141, align 16
  %142 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %143 = load %struct.GPU_FFT*, %struct.GPU_FFT** %142, align 16
  %144 = call i32 @gpu_fft_execute(%struct.GPU_FFT* %143)
  %145 = call i32 (...) @Microseconds()
  %146 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %145, i32* %146, align 4
  %147 = load %struct.GPU_FFT_TRANS*, %struct.GPU_FFT_TRANS** %12, align 8
  %148 = call i32 @gpu_fft_trans_execute(%struct.GPU_FFT_TRANS* %147)
  %149 = call i32 (...) @Microseconds()
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %149, i32* %150, align 8
  %151 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 1
  %152 = load %struct.GPU_FFT*, %struct.GPU_FFT** %151, align 8
  %153 = call i32 @gpu_fft_execute(%struct.GPU_FFT* %152)
  %154 = call i32 (...) @Microseconds()
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %154, i32* %155, align 4
  store i32 0, i32* %7, align 4
  br label %156

156:                                              ; preds = %202, %121
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @N, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %205

160:                                              ; preds = %156
  %161 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 1
  %162 = load %struct.GPU_FFT*, %struct.GPU_FFT** %161, align 8
  %163 = load i32, i32* @out, align 4
  %164 = load i32, i32* %7, align 4
  %165 = call %struct.GPU_FFT_COMPLEX* @GPU_FFT_ROW(%struct.GPU_FFT* %162, i32 %163, i32 %164)
  store %struct.GPU_FFT_COMPLEX* %165, %struct.GPU_FFT_COMPLEX** %11, align 8
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %198, %160
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* @N, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %201

170:                                              ; preds = %166
  %171 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %11, align 8
  %172 = load i32, i32* %6, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %171, i64 %173
  %175 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 128, %176
  %178 = load i32*, i32** %16, align 8
  %179 = call i32 @fputc(i32 %177, i32* %178)
  %180 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %11, align 8
  %181 = load i32, i32* %6, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %180, i64 %182
  %184 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 128, %185
  %187 = load i32*, i32** %16, align 8
  %188 = call i32 @fputc(i32 %186, i32* %187)
  %189 = load %struct.GPU_FFT_COMPLEX*, %struct.GPU_FFT_COMPLEX** %11, align 8
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %189, i64 %191
  %193 = getelementptr inbounds %struct.GPU_FFT_COMPLEX, %struct.GPU_FFT_COMPLEX* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = add nsw i32 128, %194
  %196 = load i32*, i32** %16, align 8
  %197 = call i32 @fputc(i32 %195, i32* %196)
  br label %198

198:                                              ; preds = %170
  %199 = load i32, i32* %6, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %6, align 4
  br label %166

201:                                              ; preds = %166
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %7, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %7, align 4
  br label %156

205:                                              ; preds = %156
  %206 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %207 = load i32, i32* %206, align 4
  %208 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %209 = load i32, i32* %208, align 8
  %210 = sub i32 %207, %209
  %211 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  %212 = load i32, i32* %211, align 8
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = sub i32 %212, %214
  %216 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %219 = load i32, i32* %218, align 16
  %220 = sub i32 %217, %219
  %221 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %210, i32 %215, i32 %220)
  %222 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 0
  %223 = load %struct.GPU_FFT*, %struct.GPU_FFT** %222, align 16
  %224 = call i32 @gpu_fft_release(%struct.GPU_FFT* %223)
  %225 = getelementptr inbounds [2 x %struct.GPU_FFT*], [2 x %struct.GPU_FFT*]* %13, i64 0, i64 1
  %226 = load %struct.GPU_FFT*, %struct.GPU_FFT** %225, align 8
  %227 = call i32 @gpu_fft_release(%struct.GPU_FFT* %226)
  %228 = load %struct.GPU_FFT_TRANS*, %struct.GPU_FFT_TRANS** %12, align 8
  %229 = call i32 @gpu_fft_trans_release(%struct.GPU_FFT_TRANS* %228)
  store i32 0, i32* %3, align 4
  br label %230

230:                                              ; preds = %205, %80, %66, %54, %21
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @mbox_open(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @fwrite(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @gpu_fft_prepare(i32, i32, i32, i32, %struct.GPU_FFT**) #1

declare dso_local i32 @gpu_fft_release(%struct.GPU_FFT*) #1

declare dso_local i32 @gpu_fft_trans_prepare(i32, %struct.GPU_FFT*, %struct.GPU_FFT*, %struct.GPU_FFT_TRANS**) #1

declare dso_local %struct.GPU_FFT_COMPLEX* @GPU_FFT_ROW(%struct.GPU_FFT*, i32, i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @Microseconds(...) #1

declare dso_local i32 @gpu_fft_execute(%struct.GPU_FFT*) #1

declare dso_local i32 @gpu_fft_trans_execute(%struct.GPU_FFT_TRANS*) #1

declare dso_local i32 @fputc(i32, i32*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

declare dso_local i32 @gpu_fft_trans_release(%struct.GPU_FFT_TRANS*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
