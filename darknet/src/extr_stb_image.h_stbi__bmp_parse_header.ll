; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__bmp_parse_header.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__bmp_parse_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i8* }

@.str = private unnamed_addr constant [8 x i8] c"not BMP\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Corrupt BMP\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"unknown BMP\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"BMP type not supported: unknown\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"bad BMP\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"BMP RLE\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"BMP type not supported: RLE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.TYPE_8__*, %struct.TYPE_9__*)* @stbi__bmp_parse_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @stbi__bmp_parse_header(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = call signext i8 @stbi__get8(%struct.TYPE_8__* %9)
  %11 = sext i8 %10 to i32
  %12 = icmp ne i32 %11, 66
  br i1 %12, label %18, label %13

13:                                               ; preds = %2
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %15 = call signext i8 @stbi__get8(%struct.TYPE_8__* %14)
  %16 = sext i8 %15 to i32
  %17 = icmp ne i32 %16, 77
  br i1 %17, label %18, label %20

18:                                               ; preds = %13, %2
  %19 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %3, align 8
  br label %269

20:                                               ; preds = %13
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %22 = call i8* @stbi__get32le(%struct.TYPE_8__* %21)
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %24 = call i32 @stbi__get16le(%struct.TYPE_8__* %23)
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = call i32 @stbi__get16le(%struct.TYPE_8__* %25)
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %28 = call i8* @stbi__get32le(%struct.TYPE_8__* %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %32 = call i8* @stbi__get32le(%struct.TYPE_8__* %31)
  %33 = ptrtoint i8* %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 4
  store i32 0, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i32 0, i32* %43, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 12
  br i1 %45, label %46, label %60

46:                                               ; preds = %20
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 40
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 56
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 108
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 124
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i8* %59, i8** %3, align 8
  br label %269

60:                                               ; preds = %55, %52, %49, %46, %20
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 12
  br i1 %62, label %63, label %72

63:                                               ; preds = %60
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %65 = call i32 @stbi__get16le(%struct.TYPE_8__* %64)
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = call i32 @stbi__get16le(%struct.TYPE_8__* %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %83

72:                                               ; preds = %60
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %74 = call i8* @stbi__get32le(%struct.TYPE_8__* %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %79 = call i8* @stbi__get32le(%struct.TYPE_8__* %78)
  %80 = ptrtoint i8* %79 to i32
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %72, %63
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %85 = call i32 @stbi__get16le(%struct.TYPE_8__* %84)
  %86 = icmp ne i32 %85, 1
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %88, i8** %3, align 8
  br label %269

89:                                               ; preds = %83
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = call i32 @stbi__get16le(%struct.TYPE_8__* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 5
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 12
  br i1 %95, label %96, label %268

96:                                               ; preds = %89
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = call i8* @stbi__get32le(%struct.TYPE_8__* %97)
  %99 = ptrtoint i8* %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %105, label %102

102:                                              ; preds = %96
  %103 = load i32, i32* %7, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %105, label %107

105:                                              ; preds = %102, %96
  %106 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  store i8* %106, i8** %3, align 8
  br label %269

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %109 = call i8* @stbi__get32le(%struct.TYPE_8__* %108)
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %111 = call i8* @stbi__get32le(%struct.TYPE_8__* %110)
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %113 = call i8* @stbi__get32le(%struct.TYPE_8__* %112)
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = call i8* @stbi__get32le(%struct.TYPE_8__* %114)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %117 = call i8* @stbi__get32le(%struct.TYPE_8__* %116)
  %118 = load i32, i32* %6, align 4
  %119 = icmp eq i32 %118, 40
  br i1 %119, label %123, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %6, align 4
  %122 = icmp eq i32 %121, 56
  br i1 %122, label %123, label %214

123:                                              ; preds = %120, %107
  %124 = load i32, i32* %6, align 4
  %125 = icmp eq i32 %124, 56
  br i1 %125, label %126, label %135

126:                                              ; preds = %123
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = call i8* @stbi__get32le(%struct.TYPE_8__* %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %130 = call i8* @stbi__get32le(%struct.TYPE_8__* %129)
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %132 = call i8* @stbi__get32le(%struct.TYPE_8__* %131)
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %134 = call i8* @stbi__get32le(%struct.TYPE_8__* %133)
  br label %135

135:                                              ; preds = %126, %123
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 16
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 32
  br i1 %144, label %145, label %213

145:                                              ; preds = %140, %135
  %146 = load i32, i32* %7, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %145
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 32
  br i1 %152, label %153, label %164

153:                                              ; preds = %148
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  store i32 16711680, i32* %155, align 4
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 2
  store i32 65280, i32* %157, align 8
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 3
  store i32 255, i32* %159, align 4
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 4
  store i32 -16777216, i32* %161, align 8
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 6
  store i64 0, i64* %163, align 8
  br label %171

164:                                              ; preds = %148
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  store i32 31744, i32* %166, align 4
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 2
  store i32 992, i32* %168, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 3
  store i32 31, i32* %170, align 4
  br label %171

171:                                              ; preds = %164, %153
  br label %212

172:                                              ; preds = %145
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 3
  br i1 %174, label %175, label %209

175:                                              ; preds = %172
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = call i8* @stbi__get32le(%struct.TYPE_8__* %176)
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %182 = call i8* @stbi__get32le(%struct.TYPE_8__* %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 2
  store i32 %183, i32* %185, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %187 = call i8* @stbi__get32le(%struct.TYPE_8__* %186)
  %188 = ptrtoint i8* %187 to i32
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = icmp eq i32 %193, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %175
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %201, %204
  br i1 %205, label %206, label %208

206:                                              ; preds = %198
  %207 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %207, i8** %3, align 8
  br label %269

208:                                              ; preds = %198, %175
  br label %211

209:                                              ; preds = %172
  %210 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %210, i8** %3, align 8
  br label %269

211:                                              ; preds = %208
  br label %212

212:                                              ; preds = %211, %171
  br label %213

213:                                              ; preds = %212, %140
  br label %267

214:                                              ; preds = %120
  %215 = load i32, i32* %6, align 4
  %216 = icmp ne i32 %215, 108
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i32, i32* %6, align 4
  %219 = icmp ne i32 %218, 124
  br i1 %219, label %220, label %222

220:                                              ; preds = %217
  %221 = call i8* @stbi__errpuc(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  store i8* %221, i8** %3, align 8
  br label %269

222:                                              ; preds = %217, %214
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = call i8* @stbi__get32le(%struct.TYPE_8__* %223)
  %225 = ptrtoint i8* %224 to i32
  %226 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %229 = call i8* @stbi__get32le(%struct.TYPE_8__* %228)
  %230 = ptrtoint i8* %229 to i32
  %231 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %231, i32 0, i32 2
  store i32 %230, i32* %232, align 8
  %233 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %234 = call i8* @stbi__get32le(%struct.TYPE_8__* %233)
  %235 = ptrtoint i8* %234 to i32
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 4
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %239 = call i8* @stbi__get32le(%struct.TYPE_8__* %238)
  %240 = ptrtoint i8* %239 to i32
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 8
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %244 = call i8* @stbi__get32le(%struct.TYPE_8__* %243)
  store i32 0, i32* %8, align 4
  br label %245

245:                                              ; preds = %251, %222
  %246 = load i32, i32* %8, align 4
  %247 = icmp slt i32 %246, 12
  br i1 %247, label %248, label %254

248:                                              ; preds = %245
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %250 = call i8* @stbi__get32le(%struct.TYPE_8__* %249)
  br label %251

251:                                              ; preds = %248
  %252 = load i32, i32* %8, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %8, align 4
  br label %245

254:                                              ; preds = %245
  %255 = load i32, i32* %6, align 4
  %256 = icmp eq i32 %255, 124
  br i1 %256, label %257, label %266

257:                                              ; preds = %254
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %259 = call i8* @stbi__get32le(%struct.TYPE_8__* %258)
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %261 = call i8* @stbi__get32le(%struct.TYPE_8__* %260)
  %262 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %263 = call i8* @stbi__get32le(%struct.TYPE_8__* %262)
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %265 = call i8* @stbi__get32le(%struct.TYPE_8__* %264)
  br label %266

266:                                              ; preds = %257, %254
  br label %267

267:                                              ; preds = %266, %213
  br label %268

268:                                              ; preds = %267, %89
  store i8* inttoptr (i64 1 to i8*), i8** %3, align 8
  br label %269

269:                                              ; preds = %268, %220, %209, %206, %105, %87, %58, %18
  %270 = load i8*, i8** %3, align 8
  ret i8* %270
}

declare dso_local signext i8 @stbi__get8(%struct.TYPE_8__*) #1

declare dso_local i8* @stbi__errpuc(i8*, i8*) #1

declare dso_local i8* @stbi__get32le(%struct.TYPE_8__*) #1

declare dso_local i32 @stbi__get16le(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
