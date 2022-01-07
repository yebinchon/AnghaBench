; ModuleID = '/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa.c_alsa_write.c'
source_filename = "/home/carl/AnghaBench/RetroArch/audio/drivers/extr_alsa.c_alsa_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i32 }

@EPIPE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@ESTRPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64)* @alsa_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alsa_write(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %18, %struct.TYPE_3__** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @BYTES_TO_FRAMES(i64 %21, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i64 4, i64 4
  store i64 %31, i64* %12, align 8
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %38 = call i32 @alsa_start(%struct.TYPE_3__* %37, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %203

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %108

47:                                               ; preds = %42
  br label %48

48:                                               ; preds = %93, %47
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %107

51:                                               ; preds = %48
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @snd_pcm_writei(i32 %54, i32* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @EPIPE, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %72, label %62

62:                                               ; preds = %51
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @EINTR, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @ESTRPIPE, align 4
  %70 = sub nsw i32 0, %69
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %67, %62, %51
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = call i64 @snd_pcm_recover(i32 %75, i32 %76, i32 1)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 -1, i32* %4, align 4
  br label %203

80:                                               ; preds = %72
  br label %107

81:                                               ; preds = %67
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %107

87:                                               ; preds = %81
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 -1, i32* %4, align 4
  br label %203

91:                                               ; preds = %87
  br label %92

92:                                               ; preds = %91
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %13, align 4
  %98 = shl i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %12, align 8
  %101 = mul i64 %99, %100
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 %101
  store i32* %103, i32** %9, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %48

107:                                              ; preds = %86, %80, %48
  br label %201

108:                                              ; preds = %42
  store i32 1, i32* %14, align 4
  br label %109

109:                                              ; preds = %186, %178, %139, %108
  %110 = load i32, i32* %11, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %200

112:                                              ; preds = %109
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @snd_pcm_wait(i32 %115, i32 -1)
  store i32 %116, i32* %16, align 4
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @EPIPE, align 4
  %119 = sub nsw i32 0, %118
  %120 = icmp eq i32 %117, %119
  br i1 %120, label %131, label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @ESTRPIPE, align 4
  %124 = sub nsw i32 0, %123
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %121
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @EINTR, align 4
  %129 = sub nsw i32 0, %128
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %126, %121, %112
  %132 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = call i64 @snd_pcm_recover(i32 %134, i32 %135, i32 1)
  %137 = icmp slt i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %131
  store i32 -1, i32* %4, align 4
  br label %203

139:                                              ; preds = %131
  br label %109

140:                                              ; preds = %126
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @snd_pcm_writei(i32 %143, i32* %144, i32 %145)
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* @EPIPE, align 4
  %149 = sub nsw i32 0, %148
  %150 = icmp eq i32 %147, %149
  br i1 %150, label %161, label %151

151:                                              ; preds = %140
  %152 = load i32, i32* %15, align 4
  %153 = load i32, i32* @EINTR, align 4
  %154 = sub nsw i32 0, %153
  %155 = icmp eq i32 %152, %154
  br i1 %155, label %161, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %15, align 4
  %158 = load i32, i32* @ESTRPIPE, align 4
  %159 = sub nsw i32 0, %158
  %160 = icmp eq i32 %157, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %156, %151, %140
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i64 @snd_pcm_recover(i32 %164, i32 %165, i32 1)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161
  store i32 -1, i32* %4, align 4
  br label %203

169:                                              ; preds = %161
  br label %200

170:                                              ; preds = %156
  %171 = load i32, i32* %15, align 4
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = sub nsw i32 0, %172
  %174 = icmp eq i32 %171, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %170
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %175
  store i32 0, i32* %14, align 4
  br label %109

179:                                              ; preds = %175
  br label %200

180:                                              ; preds = %170
  %181 = load i32, i32* %15, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %180
  store i32 -1, i32* %4, align 4
  br label %203

184:                                              ; preds = %180
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %15, align 4
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, %187
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %15, align 4
  %191 = shl i32 %190, 1
  %192 = sext i32 %191 to i64
  %193 = load i64, i64* %12, align 8
  %194 = mul i64 %192, %193
  %195 = load i32*, i32** %9, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 %194
  store i32* %196, i32** %9, align 8
  %197 = load i32, i32* %15, align 4
  %198 = load i32, i32* %11, align 4
  %199 = sub nsw i32 %198, %197
  store i32 %199, i32* %11, align 4
  br label %109

200:                                              ; preds = %179, %169, %109
  br label %201

201:                                              ; preds = %200, %107
  %202 = load i32, i32* %10, align 4
  store i32 %202, i32* %4, align 4
  br label %203

203:                                              ; preds = %201, %183, %168, %138, %90, %79, %40
  %204 = load i32, i32* %4, align 4
  ret i32 %204
}

declare dso_local i32 @BYTES_TO_FRAMES(i64, i32) #1

declare dso_local i32 @alsa_start(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @snd_pcm_writei(i32, i32*, i32) #1

declare dso_local i64 @snd_pcm_recover(i32, i32, i32) #1

declare dso_local i32 @snd_pcm_wait(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
