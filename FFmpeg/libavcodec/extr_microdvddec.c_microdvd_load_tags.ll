; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_microdvddec.c_microdvd_load_tags.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_microdvddec.c_microdvd_load_tags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microdvd_tag = type { i32, i8, i8*, i32, i32, i8*, i32 }

@MICRODVD_PERSISTENT_ON = common dso_local global i8* null, align 8
@MICRODVD_STYLES = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.microdvd_tag*, i8*)* @microdvd_load_tags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @microdvd_load_tags(%struct.microdvd_tag* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.microdvd_tag*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.microdvd_tag, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.microdvd_tag* %0, %struct.microdvd_tag** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.microdvd_tag*, %struct.microdvd_tag** %4, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i8* @check_for_italic_slash_marker(%struct.microdvd_tag* %12, i8* %13)
  store i8* %14, i8** %5, align 8
  br label %15

15:                                               ; preds = %222, %2
  %16 = load i8*, i8** %5, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 123
  br i1 %19, label %20, label %227

20:                                               ; preds = %15
  %21 = load i8*, i8** %5, align 8
  store i8* %21, i8** %6, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 1
  %24 = load i8, i8* %23, align 1
  store i8 %24, i8* %7, align 1
  %25 = bitcast %struct.microdvd_tag* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 40, i1 false)
  %26 = load i8, i8* %7, align 1
  %27 = icmp ne i8 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = icmp ne i32 %32, 58
  br i1 %33, label %34, label %35

34:                                               ; preds = %28, %20
  br label %227

35:                                               ; preds = %28
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 3
  store i8* %37, i8** %5, align 8
  %38 = load i8, i8* %7, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %214 [
    i32 89, label %40
    i32 121, label %43
    i32 67, label %88
    i32 99, label %91
    i32 70, label %119
    i32 102, label %122
    i32 83, label %138
    i32 115, label %141
    i32 72, label %152
    i32 80, label %168
    i32 111, label %190
  ]

40:                                               ; preds = %35
  %41 = load i8*, i8** @MICRODVD_PERSISTENT_ON, align 8
  %42 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 5
  store i8* %41, i8** %42, align 8
  br label %43

43:                                               ; preds = %35, %40
  br label %44

44:                                               ; preds = %76, %43
  %45 = load i8*, i8** %5, align 8
  %46 = load i8, i8* %45, align 1
  %47 = sext i8 %46 to i32
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %44
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp ne i32 %52, 125
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load i8*, i8** %5, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = ptrtoint i8* %55 to i64
  %58 = ptrtoint i8* %56 to i64
  %59 = sub i64 %57, %58
  %60 = icmp slt i64 %59, 256
  br label %61

61:                                               ; preds = %54, %49, %44
  %62 = phi i1 [ false, %49 ], [ false, %44 ], [ %60, %54 ]
  br i1 %62, label %63, label %79

63:                                               ; preds = %61
  %64 = load i8*, i8** @MICRODVD_STYLES, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = load i8, i8* %65, align 1
  %67 = call i32 @indexof(i8* %64, i8 signext %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %63
  %71 = load i32, i32* %9, align 4
  %72 = shl i32 1, %71
  %73 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %72
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %63
  %77 = load i8*, i8** %5, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %5, align 8
  br label %44

79:                                               ; preds = %61
  %80 = load i8*, i8** %5, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 125
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %215

85:                                               ; preds = %79
  %86 = load i8, i8* %7, align 1
  %87 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  store i8 %86, i8* %87, align 4
  br label %215

88:                                               ; preds = %35
  %89 = load i8*, i8** @MICRODVD_PERSISTENT_ON, align 8
  %90 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 5
  store i8* %89, i8** %90, align 8
  br label %91

91:                                               ; preds = %35, %88
  br label %92

92:                                               ; preds = %104, %91
  %93 = load i8*, i8** %5, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 36
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load i8*, i8** %5, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 35
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i1 [ true, %92 ], [ %101, %97 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i8*, i8** %5, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %5, align 8
  br label %92

107:                                              ; preds = %102
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @strtol(i8* %108, i8** %5, i32 16)
  %110 = and i32 %109, 16777215
  %111 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 0
  store i32 %110, i32* %111, align 8
  %112 = load i8*, i8** %5, align 8
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp ne i32 %114, 125
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %215

117:                                              ; preds = %107
  %118 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  store i8 99, i8* %118, align 4
  br label %215

119:                                              ; preds = %35
  %120 = load i8*, i8** @MICRODVD_PERSISTENT_ON, align 8
  %121 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 5
  store i8* %120, i8** %121, align 8
  br label %122

122:                                              ; preds = %35, %119
  %123 = load i8*, i8** %5, align 8
  %124 = call i32 @indexof(i8* %123, i8 signext 125)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %122
  br label %215

128:                                              ; preds = %122
  %129 = load i8*, i8** %5, align 8
  %130 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 2
  store i8* %129, i8** %130, align 8
  %131 = load i32, i32* %10, align 4
  %132 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 3
  store i32 %131, i32* %132, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i8*, i8** %5, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %5, align 8
  %137 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  store i8 102, i8* %137, align 4
  br label %215

138:                                              ; preds = %35
  %139 = load i8*, i8** @MICRODVD_PERSISTENT_ON, align 8
  %140 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 5
  store i8* %139, i8** %140, align 8
  br label %141

141:                                              ; preds = %35, %138
  %142 = load i8*, i8** %5, align 8
  %143 = call i32 @strtol(i8* %142, i8** %5, i32 10)
  %144 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 0
  store i32 %143, i32* %144, align 8
  %145 = load i8*, i8** %5, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp ne i32 %147, 125
  br i1 %148, label %149, label %150

149:                                              ; preds = %141
  br label %215

150:                                              ; preds = %141
  %151 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  store i8 115, i8* %151, align 4
  br label %215

152:                                              ; preds = %35
  %153 = load i8*, i8** %5, align 8
  %154 = call i32 @indexof(i8* %153, i8 signext 125)
  store i32 %154, i32* %11, align 4
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %152
  br label %215

158:                                              ; preds = %152
  %159 = load i8*, i8** %5, align 8
  %160 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 2
  store i8* %159, i8** %160, align 8
  %161 = load i32, i32* %11, align 4
  %162 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 3
  store i32 %161, i32* %162, align 8
  %163 = load i32, i32* %11, align 4
  %164 = load i8*, i8** %5, align 8
  %165 = sext i32 %163 to i64
  %166 = getelementptr inbounds i8, i8* %164, i64 %165
  store i8* %166, i8** %5, align 8
  %167 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  store i8 104, i8* %167, align 4
  br label %215

168:                                              ; preds = %35
  %169 = load i8*, i8** %5, align 8
  %170 = load i8, i8* %169, align 1
  %171 = icmp ne i8 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %168
  br label %215

173:                                              ; preds = %168
  %174 = load i8*, i8** @MICRODVD_PERSISTENT_ON, align 8
  %175 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 5
  store i8* %174, i8** %175, align 8
  %176 = load i8*, i8** %5, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %5, align 8
  %178 = load i8, i8* %176, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 49
  %181 = zext i1 %180 to i32
  %182 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 0
  store i32 %181, i32* %182, align 8
  %183 = load i8*, i8** %5, align 8
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = icmp ne i32 %185, 125
  br i1 %186, label %187, label %188

187:                                              ; preds = %173
  br label %215

188:                                              ; preds = %173
  %189 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  store i8 112, i8* %189, align 4
  br label %215

190:                                              ; preds = %35
  %191 = load i8*, i8** @MICRODVD_PERSISTENT_ON, align 8
  %192 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 5
  store i8* %191, i8** %192, align 8
  %193 = load i8*, i8** %5, align 8
  %194 = call i32 @strtol(i8* %193, i8** %5, i32 10)
  %195 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 0
  store i32 %194, i32* %195, align 8
  %196 = load i8*, i8** %5, align 8
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  %199 = icmp ne i32 %198, 44
  br i1 %199, label %200, label %201

200:                                              ; preds = %190
  br label %215

201:                                              ; preds = %190
  %202 = load i8*, i8** %5, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %5, align 8
  %204 = load i8*, i8** %5, align 8
  %205 = call i32 @strtol(i8* %204, i8** %5, i32 10)
  %206 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 4
  store i32 %205, i32* %206, align 4
  %207 = load i8*, i8** %5, align 8
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp ne i32 %209, 125
  br i1 %210, label %211, label %212

211:                                              ; preds = %201
  br label %215

212:                                              ; preds = %201
  %213 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  store i8 111, i8* %213, align 4
  br label %215

214:                                              ; preds = %35
  br label %215

215:                                              ; preds = %214, %212, %211, %200, %188, %187, %172, %158, %157, %150, %149, %128, %127, %117, %116, %85, %84
  %216 = getelementptr inbounds %struct.microdvd_tag, %struct.microdvd_tag* %8, i32 0, i32 1
  %217 = load i8, i8* %216, align 4
  %218 = sext i8 %217 to i32
  %219 = icmp eq i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = load i8*, i8** %6, align 8
  store i8* %221, i8** %3, align 8
  br label %231

222:                                              ; preds = %215
  %223 = load %struct.microdvd_tag*, %struct.microdvd_tag** %4, align 8
  %224 = call i32 @microdvd_set_tag(%struct.microdvd_tag* %223, %struct.microdvd_tag* byval(%struct.microdvd_tag) align 8 %8)
  %225 = load i8*, i8** %5, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %5, align 8
  br label %15

227:                                              ; preds = %34, %15
  %228 = load %struct.microdvd_tag*, %struct.microdvd_tag** %4, align 8
  %229 = load i8*, i8** %5, align 8
  %230 = call i8* @check_for_italic_slash_marker(%struct.microdvd_tag* %228, i8* %229)
  store i8* %230, i8** %3, align 8
  br label %231

231:                                              ; preds = %227, %220
  %232 = load i8*, i8** %3, align 8
  ret i8* %232
}

declare dso_local i8* @check_for_italic_slash_marker(%struct.microdvd_tag*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @indexof(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @microdvd_set_tag(%struct.microdvd_tag*, %struct.microdvd_tag* byval(%struct.microdvd_tag) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
