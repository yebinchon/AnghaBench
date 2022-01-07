; ModuleID = '/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_uwp.c_frontend_uwp_get_os.c'
source_filename = "/home/carl/AnghaBench/RetroArch/frontend/drivers/extr_platform_uwp.c_frontend_uwp_get_os.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Windows Server 2016\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Windows 10\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Windows Server 2012 R2\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Windows 8.1\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"Windows Server 2012\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"Windows 8\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Windows Server 2008 R2\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"Windows 7\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Windows Server 2008\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"Windows Vista\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"Windows Server 2003\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"x64\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"Windows XP\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"Windows 2000\00", align 1
@VER_PLATFORM_WIN32_WINDOWS = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [11 x i8] c"Windows 95\00", align 1
@VER_PLATFORM_WIN32_NT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"Windows NT 4.0\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Windows ME\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"Windows 98\00", align 1
@.str.21 = private unnamed_addr constant [14 x i8] c"Windows %i.%i\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c" Build \00", align 1
@uwp_device_family = common dso_local global i8* null, align 8
@VER_NT_WORKSTATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*, i32*)* @frontend_uwp_get_os to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_uwp_get_os(i8* %0, i64 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [11 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_10__, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = bitcast [11 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %13, i8 0, i64 11, i1 false)
  store i32 0, i32* %10, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %14 = bitcast %struct.TYPE_10__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  store i32 40, i32* %15, align 8
  %16 = call i32 @GetVersionEx(%struct.TYPE_10__* %12)
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %19, %4
  %24 = load i32*, i32** %8, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load i32*, i32** %8, align 8
  store i32 %28, i32* %29, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %34
  %39 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @LOWORD(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %39, i64 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %50

45:                                               ; preds = %34, %30
  %46 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %46, i64 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %45, %38
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %183 [
    i32 10, label %53
    i32 6, label %65
    i32 5, label %118
    i32 4, label %147
  ]

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i8*, i8** %5, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @strlcpy(i8* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  br label %64

60:                                               ; preds = %53
  %61 = load i8*, i8** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @strlcpy(i8* %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %60, %56
  br label %191

65:                                               ; preds = %50
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  switch i32 %67, label %116 [
    i32 3, label %68
    i32 2, label %80
    i32 1, label %92
    i32 0, label %104
  ]

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i8*, i8** %5, align 8
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @strlcpy(i8* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  br label %79

75:                                               ; preds = %68
  %76 = load i8*, i8** %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = call i32 @strlcpy(i8* %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %117

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i8*, i8** %5, align 8
  %85 = load i64, i64* %6, align 8
  %86 = call i32 @strlcpy(i8* %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %85)
  br label %91

87:                                               ; preds = %80
  %88 = load i8*, i8** %5, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @strlcpy(i8* %88, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %87, %83
  br label %117

92:                                               ; preds = %65
  %93 = load i32, i32* %10, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i8*, i8** %5, align 8
  %97 = load i64, i64* %6, align 8
  %98 = call i32 @strlcpy(i8* %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i64 %97)
  br label %103

99:                                               ; preds = %92
  %100 = load i8*, i8** %5, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i32 @strlcpy(i8* %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %99, %95
  br label %117

104:                                              ; preds = %65
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i8*, i8** %5, align 8
  %109 = load i64, i64* %6, align 8
  %110 = call i32 @strlcpy(i8* %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i64 %109)
  br label %115

111:                                              ; preds = %104
  %112 = load i8*, i8** %5, align 8
  %113 = load i64, i64* %6, align 8
  %114 = call i32 @strlcpy(i8* %112, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i64 %113)
  br label %115

115:                                              ; preds = %111, %107
  br label %117

116:                                              ; preds = %65
  br label %117

117:                                              ; preds = %116, %115, %103, %91, %79
  br label %191

118:                                              ; preds = %50
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  switch i32 %120, label %146 [
    i32 2, label %121
    i32 1, label %138
    i32 0, label %142
  ]

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i8*, i8** %5, align 8
  %126 = load i64, i64* %6, align 8
  %127 = call i32 @strlcpy(i8* %125, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 %126)
  br label %137

128:                                              ; preds = %121
  %129 = load i8*, i8** %11, align 8
  %130 = call i32 @string_is_equal(i8* %129, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i8*, i8** %5, align 8
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @strlcpy(i8* %133, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %134)
  br label %136

136:                                              ; preds = %132, %128
  br label %137

137:                                              ; preds = %136, %124
  br label %146

138:                                              ; preds = %118
  %139 = load i8*, i8** %5, align 8
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @strlcpy(i8* %139, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0), i64 %140)
  br label %146

142:                                              ; preds = %118
  %143 = load i8*, i8** %5, align 8
  %144 = load i64, i64* %6, align 8
  %145 = call i32 @strlcpy(i8* %143, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 %144)
  br label %146

146:                                              ; preds = %118, %142, %138, %137
  br label %191

147:                                              ; preds = %50
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  switch i32 %149, label %182 [
    i32 0, label %150
    i32 90, label %174
    i32 10, label %178
  ]

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @VER_PLATFORM_WIN32_WINDOWS, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %150
  %156 = load i8*, i8** %5, align 8
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @strlcpy(i8* %156, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.16, i64 0, i64 0), i64 %157)
  br label %173

159:                                              ; preds = %150
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @VER_PLATFORM_WIN32_NT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i8*, i8** %5, align 8
  %166 = load i64, i64* %6, align 8
  %167 = call i32 @strlcpy(i8* %165, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i64 %166)
  br label %172

168:                                              ; preds = %159
  %169 = load i8*, i8** %5, align 8
  %170 = load i64, i64* %6, align 8
  %171 = call i32 @strlcpy(i8* %169, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i64 %170)
  br label %172

172:                                              ; preds = %168, %164
  br label %173

173:                                              ; preds = %172, %155
  br label %182

174:                                              ; preds = %147
  %175 = load i8*, i8** %5, align 8
  %176 = load i64, i64* %6, align 8
  %177 = call i32 @strlcpy(i8* %175, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i64 0, i64 0), i64 %176)
  br label %182

178:                                              ; preds = %147
  %179 = load i8*, i8** %5, align 8
  %180 = load i64, i64* %6, align 8
  %181 = call i32 @strlcpy(i8* %179, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.20, i64 0, i64 0), i64 %180)
  br label %182

182:                                              ; preds = %147, %178, %174, %173
  br label %191

183:                                              ; preds = %50
  %184 = load i8*, i8** %5, align 8
  %185 = load i64, i64* %6, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %8, align 8
  %189 = load i32, i32* %188, align 4
  %190 = call i32 (i8*, i64, i8*, i32, ...) @snprintf(i8* %184, i64 %185, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.21, i64 0, i64 0), i32 %187, i32 %189)
  br label %191

191:                                              ; preds = %183, %182, %146, %117, %64
  %192 = load i8*, i8** %11, align 8
  %193 = call i32 @string_is_empty(i8* %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %203, label %195

195:                                              ; preds = %191
  %196 = load i8*, i8** %5, align 8
  %197 = load i64, i64* %6, align 8
  %198 = call i32 @strlcat(i8* %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 %197)
  %199 = load i8*, i8** %5, align 8
  %200 = load i8*, i8** %11, align 8
  %201 = load i64, i64* %6, align 8
  %202 = call i32 @strlcat(i8* %199, i8* %200, i64 %201)
  br label %203

203:                                              ; preds = %195, %191
  %204 = load i8*, i8** %5, align 8
  %205 = load i64, i64* %6, align 8
  %206 = call i32 @strlcat(i8* %204, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 %205)
  %207 = load i8*, i8** %5, align 8
  %208 = getelementptr inbounds [11 x i8], [11 x i8]* %9, i64 0, i64 0
  %209 = load i64, i64* %6, align 8
  %210 = call i32 @strlcat(i8* %207, i8* %208, i64 %209)
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %212 = load i8*, i8** %211, align 8
  %213 = call i32 @string_is_empty(i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %203
  %216 = load i8*, i8** %5, align 8
  %217 = load i64, i64* %6, align 8
  %218 = call i32 @strlcat(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 %217)
  %219 = load i8*, i8** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %221 = load i8*, i8** %220, align 8
  %222 = load i64, i64* %6, align 8
  %223 = call i32 @strlcat(i8* %219, i8* %221, i64 %222)
  br label %224

224:                                              ; preds = %215, %203
  %225 = load i8*, i8** @uwp_device_family, align 8
  %226 = call i32 @string_is_empty(i8* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %236, label %228

228:                                              ; preds = %224
  %229 = load i8*, i8** %5, align 8
  %230 = load i64, i64* %6, align 8
  %231 = call i32 @strlcat(i8* %229, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 %230)
  %232 = load i8*, i8** %5, align 8
  %233 = load i8*, i8** @uwp_device_family, align 8
  %234 = load i64, i64* %6, align 8
  %235 = call i32 @strlcat(i8* %232, i8* %233, i64 %234)
  br label %236

236:                                              ; preds = %228, %224
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @GetVersionEx(%struct.TYPE_10__*) #2

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, ...) #2

declare dso_local i64 @LOWORD(i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @string_is_equal(i8*, i8*) #2

declare dso_local i32 @string_is_empty(i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
