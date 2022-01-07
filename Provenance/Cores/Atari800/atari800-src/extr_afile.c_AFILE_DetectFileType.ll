; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_afile.c_AFILE_DetectFileType.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_afile.c_AFILE_DetectFileType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@AFILE_ERROR = common dso_local global i32 0, align 4
@AFILE_BAS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\22%s\22 is a compressed file.\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"This executable does not support compressed files. You can uncompress this file\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"with an external program that supports gzip (*.gz) files (e.g. gunzip)\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"and then load into this emulator.\00", align 1
@AFILE_LST = common dso_local global i32 0, align 4
@AFILE_STATE = common dso_local global i32 0, align 4
@AFILE_ATX = common dso_local global i32 0, align 4
@AFILE_CART = common dso_local global i32 0, align 4
@AFILE_ATR = common dso_local global i32 0, align 4
@AFILE_DCM = common dso_local global i32 0, align 4
@AFILE_XEX = common dso_local global i32 0, align 4
@AFILE_PRO = common dso_local global i32 0, align 4
@CARTRIDGE_MAX_SIZE = common dso_local global i32 0, align 4
@AFILE_ROM = common dso_local global i32 0, align 4
@AFILE_BOOT_TAPE = common dso_local global i32 0, align 4
@AFILE_XFD = common dso_local global i32 0, align 4
@AFILE_CAS = common dso_local global i32 0, align 4
@AFILE_ATR_GZ = common dso_local global i32 0, align 4
@AFILE_STATE_GZ = common dso_local global i32 0, align 4
@AFILE_XFD_GZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AFILE_DetectFileType(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i32* @fopen(i8* %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %8, i32** %6, align 8
  %9 = load i32*, i32** %6, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %12, i32* %2, align 4
  br label %220

13:                                               ; preds = %1
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @fread(i32* %14, i32 1, i32 4, i32* %15)
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @fclose(i32* %19)
  %21 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %21, i32* %2, align 4
  br label %220

22:                                               ; preds = %13
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  switch i32 %24, label %153 [
    i32 0, label %25
    i32 31, label %42
    i32 48, label %56
    i32 49, label %56
    i32 50, label %56
    i32 51, label %56
    i32 52, label %56
    i32 53, label %56
    i32 54, label %56
    i32 55, label %56
    i32 56, label %56
    i32 57, label %56
    i32 65, label %73
    i32 67, label %106
    i32 150, label %123
    i32 249, label %132
    i32 250, label %132
    i32 255, label %136
  ]

25:                                               ; preds = %22
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @fclose(i32* %38)
  %40 = load i32, i32* @AFILE_BAS, align 4
  store i32 %40, i32* %2, align 4
  br label %220

41:                                               ; preds = %33, %25
  br label %154

42:                                               ; preds = %22
  %43 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 139
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @fclose(i32* %47)
  %49 = load i8*, i8** %3, align 8
  %50 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0))
  %52 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %53 = call i32 (i8*, ...) @Log_print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %54, i32* %2, align 4
  br label %220

55:                                               ; preds = %42
  br label %154

56:                                               ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %58, 48
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sle i32 %62, 57
  br i1 %63, label %68, label %64

64:                                               ; preds = %60, %56
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 32
  br i1 %67, label %68, label %72

68:                                               ; preds = %64, %60
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @fclose(i32* %69)
  %71 = load i32, i32* @AFILE_LST, align 4
  store i32 %71, i32* %2, align 4
  br label %220

72:                                               ; preds = %64
  br label %154

73:                                               ; preds = %22
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 84
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp eq i32 %79, 65
  br i1 %80, label %81, label %89

81:                                               ; preds = %77
  %82 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %83, 82
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @fclose(i32* %86)
  %88 = load i32, i32* @AFILE_STATE, align 4
  store i32 %88, i32* %2, align 4
  br label %220

89:                                               ; preds = %81, %77, %73
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, 84
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %95 = load i32, i32* %94, align 8
  %96 = icmp eq i32 %95, 56
  br i1 %96, label %97, label %105

97:                                               ; preds = %93
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 88
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @fclose(i32* %102)
  %104 = load i32, i32* @AFILE_ATX, align 4
  store i32 %104, i32* %2, align 4
  br label %220

105:                                              ; preds = %97, %93, %89
  br label %154

106:                                              ; preds = %22
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 65
  br i1 %109, label %110, label %122

110:                                              ; preds = %106
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 82
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 84
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load i32*, i32** %6, align 8
  %120 = call i32 @fclose(i32* %119)
  %121 = load i32, i32* @AFILE_CART, align 4
  store i32 %121, i32* %2, align 4
  br label %220

122:                                              ; preds = %114, %110, %106
  br label %154

123:                                              ; preds = %22
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp eq i32 %125, 2
  br i1 %126, label %127, label %131

127:                                              ; preds = %123
  %128 = load i32*, i32** %6, align 8
  %129 = call i32 @fclose(i32* %128)
  %130 = load i32, i32* @AFILE_ATR, align 4
  store i32 %130, i32* %2, align 4
  br label %220

131:                                              ; preds = %123
  br label %154

132:                                              ; preds = %22, %22
  %133 = load i32*, i32** %6, align 8
  %134 = call i32 @fclose(i32* %133)
  %135 = load i32, i32* @AFILE_DCM, align 4
  store i32 %135, i32* %2, align 4
  br label %220

136:                                              ; preds = %22
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 255
  br i1 %139, label %140, label %152

140:                                              ; preds = %136
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 255
  br i1 %143, label %148, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 255
  br i1 %147, label %148, label %152

148:                                              ; preds = %144, %140
  %149 = load i32*, i32** %6, align 8
  %150 = call i32 @fclose(i32* %149)
  %151 = load i32, i32* @AFILE_XEX, align 4
  store i32 %151, i32* %2, align 4
  br label %220

152:                                              ; preds = %144, %136
  br label %154

153:                                              ; preds = %22
  br label %154

154:                                              ; preds = %153, %152, %131, %122, %105, %72, %55, %41
  %155 = load i32*, i32** %6, align 8
  %156 = call i32 @Util_flen(i32* %155)
  store i32 %156, i32* %5, align 4
  %157 = load i32*, i32** %6, align 8
  %158 = call i32 @fclose(i32* %157)
  %159 = load i32, i32* %5, align 4
  %160 = sub nsw i32 %159, 16
  %161 = srem i32 %160, 140
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %180

163:                                              ; preds = %154
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %165 = load i32, i32* %164, align 16
  %166 = mul nsw i32 %165, 256
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %166, %168
  %170 = load i32, i32* %5, align 4
  %171 = sub nsw i32 %170, 16
  %172 = sdiv i32 %171, 140
  %173 = icmp eq i32 %169, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %163
  %175 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 80
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @AFILE_PRO, align 4
  store i32 %179, i32* %2, align 4
  br label %220

180:                                              ; preds = %174, %163, %154
  %181 = load i32, i32* %5, align 4
  %182 = icmp sge i32 %181, 4096
  br i1 %182, label %183, label %198

183:                                              ; preds = %180
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* @CARTRIDGE_MAX_SIZE, align 4
  %186 = icmp sle i32 %184, %185
  br i1 %186, label %187, label %198

187:                                              ; preds = %183
  %188 = load i32, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = sub nsw i32 %189, 1
  %191 = and i32 %188, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %187
  %194 = load i32, i32* %5, align 4
  %195 = icmp eq i32 %194, 40960
  br i1 %195, label %196, label %198

196:                                              ; preds = %193, %187
  %197 = load i32, i32* @AFILE_ROM, align 4
  store i32 %197, i32* %2, align 4
  br label %220

198:                                              ; preds = %193, %183, %180
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = shl i32 %200, 7
  %202 = load i32, i32* %5, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @AFILE_BOOT_TAPE, align 4
  store i32 %205, i32* %2, align 4
  br label %220

206:                                              ; preds = %198
  %207 = load i32, i32* %5, align 4
  %208 = and i32 %207, 127
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %206
  %211 = load i32, i32* @AFILE_XFD, align 4
  store i32 %211, i32* %2, align 4
  br label %220

212:                                              ; preds = %206
  %213 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %214 = call i64 @IMG_TAPE_FileSupported(i32* %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, i32* @AFILE_CAS, align 4
  store i32 %217, i32* %2, align 4
  br label %220

218:                                              ; preds = %212
  %219 = load i32, i32* @AFILE_ERROR, align 4
  store i32 %219, i32* %2, align 4
  br label %220

220:                                              ; preds = %218, %216, %210, %204, %196, %178, %148, %132, %127, %118, %101, %85, %68, %46, %37, %18, %11
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @Log_print(i8*, ...) #1

declare dso_local i32 @Util_flen(i32*) #1

declare dso_local i64 @IMG_TAPE_FileSupported(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
