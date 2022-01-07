; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_stopreadresponse.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_sdgecko_io.c___card_stopreadresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_DRIVE = common dso_local global i64 0, align 8
@CARDIO_ERROR_NOCARD = common dso_local global i64 0, align 8
@EXI_DEVICE_0 = common dso_local global i32 0, align 4
@_ioCardFreq = common dso_local global i32 0, align 4
@CARDIO_ERROR_READY = common dso_local global i64 0, align 8
@_ioClrFlag = common dso_local global i32 0, align 4
@EXI_READWRITE = common dso_local global i32 0, align 4
@CARDIO_ERROR_IOERROR = common dso_local global i64 0, align 8
@CARDIO_ERROR_IOTIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i8*, i64)* @__card_stopreadresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__card_stopreadresponse(i64 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MAX_DRIVE, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14, %3
  %19 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %19, i64* %4, align 8
  br label %200

20:                                               ; preds = %14
  %21 = load i8*, i8** %6, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @__exi_wait(i64 %23)
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @EXI_DEVICE_0, align 4
  %27 = load i32, i32* @_ioCardFreq, align 4
  %28 = call i64 @EXI_Select(i64 %25, i32 %26, i32 %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @EXI_Unlock(i64 %31)
  %33 = load i64, i64* @CARDIO_ERROR_NOCARD, align 8
  store i64 %33, i64* %4, align 8
  br label %200

34:                                               ; preds = %20
  %35 = load i64, i64* @CARDIO_ERROR_READY, align 8
  store i64 %35, i64* %11, align 8
  %36 = load i32, i32* @_ioClrFlag, align 4
  %37 = load i32*, i32** %8, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i64, i64* %5, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @EXI_READWRITE, align 4
  %41 = call i64 @EXI_ImmEx(i64 %38, i32* %39, i64 1, i32 %40)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @EXI_Deselect(i64 %44)
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @EXI_Unlock(i64 %46)
  %48 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %48, i64* %4, align 8
  br label %200

49:                                               ; preds = %34
  %50 = load i32, i32* @_ioClrFlag, align 4
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load i64, i64* %5, align 8
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @EXI_READWRITE, align 4
  %55 = call i64 @EXI_ImmEx(i64 %52, i32* %53, i64 1, i32 %54)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %49
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @EXI_Deselect(i64 %58)
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @EXI_Unlock(i64 %60)
  %62 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %62, i64* %4, align 8
  br label %200

63:                                               ; preds = %49
  %64 = call i64 (...) @gettick()
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %117, %63
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 128
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %118

70:                                               ; preds = %65
  %71 = load i32, i32* @_ioClrFlag, align 4
  %72 = load i32*, i32** %8, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i64, i64* %5, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* @EXI_READWRITE, align 4
  %76 = call i64 @EXI_ImmEx(i64 %73, i32* %74, i64 1, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @EXI_Deselect(i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @EXI_Unlock(i64 %81)
  %83 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %83, i64* %4, align 8
  br label %200

84:                                               ; preds = %70
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 128
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %84
  br label %118

90:                                               ; preds = %84
  %91 = load i64, i64* %5, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i64 @__card_checktimeout(i64 %91, i64 %92, i32 1500)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %90
  %96 = load i32, i32* @_ioClrFlag, align 4
  %97 = load i32*, i32** %8, align 8
  store i32 %96, i32* %97, align 4
  %98 = load i64, i64* %5, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* @EXI_READWRITE, align 4
  %101 = call i64 @EXI_ImmEx(i64 %98, i32* %99, i64 1, i32 %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @EXI_Deselect(i64 %104)
  %106 = load i64, i64* %5, align 8
  %107 = call i32 @EXI_Unlock(i64 %106)
  %108 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %108, i64* %4, align 8
  br label %200

109:                                              ; preds = %95
  %110 = load i32*, i32** %8, align 8
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 128
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %109
  %115 = load i64, i64* @CARDIO_ERROR_IOTIMEOUT, align 8
  store i64 %115, i64* %11, align 8
  br label %116

116:                                              ; preds = %114, %109
  br label %118

117:                                              ; preds = %90
  br label %65

118:                                              ; preds = %116, %89, %65
  %119 = load i32*, i32** %8, align 8
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %170, %118
  %122 = load i32*, i32** %8, align 8
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 255
  br i1 %124, label %125, label %171

125:                                              ; preds = %121
  %126 = load i32, i32* @_ioClrFlag, align 4
  %127 = load i32*, i32** %8, align 8
  store i32 %126, i32* %127, align 4
  %128 = load i64, i64* %5, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = load i32, i32* @EXI_READWRITE, align 4
  %131 = call i64 @EXI_ImmEx(i64 %128, i32* %129, i64 1, i32 %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load i64, i64* %5, align 8
  %135 = call i32 @EXI_Deselect(i64 %134)
  %136 = load i64, i64* %5, align 8
  %137 = call i32 @EXI_Unlock(i64 %136)
  %138 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %138, i64* %4, align 8
  br label %200

139:                                              ; preds = %125
  %140 = load i32*, i32** %8, align 8
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 255
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %171

144:                                              ; preds = %139
  %145 = load i64, i64* %5, align 8
  %146 = load i64, i64* %10, align 8
  %147 = call i64 @__card_checktimeout(i64 %145, i64 %146, i32 1500)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %170

149:                                              ; preds = %144
  %150 = load i32, i32* @_ioClrFlag, align 4
  %151 = load i32*, i32** %8, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i64, i64* %5, align 8
  %153 = load i32*, i32** %8, align 8
  %154 = load i32, i32* @EXI_READWRITE, align 4
  %155 = call i64 @EXI_ImmEx(i64 %152, i32* %153, i64 1, i32 %154)
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %149
  %158 = load i64, i64* %5, align 8
  %159 = call i32 @EXI_Deselect(i64 %158)
  %160 = load i64, i64* %5, align 8
  %161 = call i32 @EXI_Unlock(i64 %160)
  %162 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %162, i64* %4, align 8
  br label %200

163:                                              ; preds = %149
  %164 = load i32*, i32** %8, align 8
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 255
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = load i64, i64* @CARDIO_ERROR_IOTIMEOUT, align 8
  store i64 %168, i64* %11, align 8
  br label %169

169:                                              ; preds = %167, %163
  br label %171

170:                                              ; preds = %144
  br label %121

171:                                              ; preds = %169, %143, %121
  %172 = load i32, i32* %9, align 4
  %173 = load i32*, i32** %8, align 8
  store i32 %172, i32* %173, align 4
  %174 = load i64, i64* %7, align 8
  %175 = icmp sgt i64 %174, 1
  br i1 %175, label %176, label %194

176:                                              ; preds = %171
  %177 = load i64, i64* %11, align 8
  %178 = load i64, i64* @CARDIO_ERROR_READY, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %194

180:                                              ; preds = %176
  %181 = load i32, i32* @_ioClrFlag, align 4
  %182 = load i32*, i32** %8, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %8, align 8
  store i32 %181, i32* %183, align 4
  %184 = load i64, i64* %5, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = load i64, i64* %7, align 8
  %187 = sub nsw i64 %186, 1
  %188 = load i32, i32* @EXI_READWRITE, align 4
  %189 = call i64 @EXI_ImmEx(i64 %184, i32* %185, i64 %187, i32 %188)
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %180
  %192 = load i64, i64* @CARDIO_ERROR_IOERROR, align 8
  store i64 %192, i64* %11, align 8
  br label %193

193:                                              ; preds = %191, %180
  br label %194

194:                                              ; preds = %193, %176, %171
  %195 = load i64, i64* %5, align 8
  %196 = call i32 @EXI_Deselect(i64 %195)
  %197 = load i64, i64* %5, align 8
  %198 = call i32 @EXI_Unlock(i64 %197)
  %199 = load i64, i64* %11, align 8
  store i64 %199, i64* %4, align 8
  br label %200

200:                                              ; preds = %194, %157, %133, %103, %78, %57, %43, %30, %18
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

declare dso_local i32 @__exi_wait(i64) #1

declare dso_local i64 @EXI_Select(i64, i32, i32) #1

declare dso_local i32 @EXI_Unlock(i64) #1

declare dso_local i64 @EXI_ImmEx(i64, i32*, i64, i32) #1

declare dso_local i32 @EXI_Deselect(i64) #1

declare dso_local i64 @gettick(...) #1

declare dso_local i64 @__card_checktimeout(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
