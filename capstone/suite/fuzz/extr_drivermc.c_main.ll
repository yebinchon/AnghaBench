; ModuleID = '/home/carl/AnghaBench/capstone/suite/fuzz/extr_drivermc.c_main.c'
source_filename = "/home/carl/AnghaBench/capstone/suite/fuzz/extr_drivermc.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_INSTR_SIZE = common dso_local global i32 0, align 4
@MAX_LINE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Trying %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"# %[^,], %[^,]\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"Wrong mode %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CS_ARCH_X86\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"CS_MODE_32\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"CS_MODE_64\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CS_ARCH_ARM\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"CS_MODE_ARM\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"CS_MODE_THUMB\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"CS_MODE_ARM+CS_MODE_V8\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"CS_MODE_THUMB+CS_MODE_V8\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"CS_MODE_THUMB+CS_MODE_MCLASS\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"CS_ARCH_ARM64\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"CS_ARCH_MIPS\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"CS_MODE_MIPS32+CS_MODE_BIG_ENDIAN\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"CS_MODE_MIPS32+CS_MODE_MICRO\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"CS_MODE_MIPS64\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"CS_MODE_MIPS32\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"CS_MODE_MIPS64+CS_MODE_BIG_ENDIAN\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"CS_MODE_MIPS32+CS_MODE_MICRO+CS_MODE_BIG_ENDIAN\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"CS_MODE_MIPS32+CS_MODE_BIG_ENDIAN+CS_MODE_MICRO\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"CS_ARCH_PPC\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"CS_MODE_BIG_ENDIAN\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"CS_ARCH_SPARC\00", align 1
@.str.26 = private unnamed_addr constant [32 x i8] c"CS_MODE_BIG_ENDIAN + CS_MODE_V9\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"CS_ARCH_SYSZ\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"CS_ARCH_XCORE\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"CS_MODE_MIPS32R6+CS_MODE_BIG_ENDIAN\00", align 1
@.str.30 = private unnamed_addr constant [50 x i8] c"CS_MODE_MIPS32R6+CS_MODE_MICRO+CS_MODE_BIG_ENDIAN\00", align 1
@.str.31 = private unnamed_addr constant [17 x i8] c"CS_MODE_MIPS32R6\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"CS_MODE_MIPS32R6+CS_MODE_MICRO\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"CS_ARCH_M68K\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"CS_ARCH_M680X\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"CS_MODE_M680X_6809\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"CS_ARCH_EVM\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"Unknown mode\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"No mode\0A\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"0x%02x\00", align 1
@.str.40 = private unnamed_addr constant [15 x i8] c"Line overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @MAX_INSTR_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load i32, i32* @MAX_LINE_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %9, align 8
  %23 = load i32, i32* @MAX_LINE_SIZE, align 4
  %24 = zext i32 %23 to i64
  %25 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %11, align 8
  %26 = load i32, i32* @MAX_LINE_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %12, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 2
  br i1 %30, label %31, label %32

31:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %368

32:                                               ; preds = %2
  store i32 1, i32* %14, align 4
  br label %33

33:                                               ; preds = %364, %32
  %34 = load i32, i32* %14, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %367

37:                                               ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32* @fopen(i8* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %43, i32** %6, align 8
  %44 = load i32*, i32** %6, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  store i32 2, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %368

47:                                               ; preds = %37
  %48 = load i8**, i8*** %5, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8*, i8** %48, i64 %50
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  %54 = load i32, i32* @MAX_LINE_SIZE, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = call i32* @fgets(i8* %22, i32 %54, i32* %55)
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  br label %367

59:                                               ; preds = %47
  %60 = getelementptr inbounds i8, i8* %22, i64 0
  %61 = load i8, i8* %60, align 16
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 35
  br i1 %63, label %64, label %314

64:                                               ; preds = %59
  %65 = call i32 (i8*, i8*, ...) @sscanf(i8* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %25, i8* %28)
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %22)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %368

69:                                               ; preds = %64
  %70 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %69
  %73 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %72
  %76 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 0, i32* %76, align 16
  br label %313

77:                                               ; preds = %72, %69
  %78 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 1, i32* %84, align 16
  br label %312

85:                                               ; preds = %80, %77
  %86 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  %89 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %88
  %92 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 2, i32* %92, align 16
  br label %311

93:                                               ; preds = %88, %85
  %94 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %93
  %97 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0))
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %96
  %100 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 3, i32* %100, align 16
  br label %310

101:                                              ; preds = %96, %93
  %102 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 4, i32* %108, align 16
  br label %309

109:                                              ; preds = %104, %101
  %110 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 5, i32* %116, align 16
  br label %308

117:                                              ; preds = %112, %109
  %118 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %117
  %121 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 6, i32* %124, align 16
  br label %307

125:                                              ; preds = %120, %117
  %126 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %125
  %129 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %128
  %132 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 7, i32* %132, align 16
  br label %306

133:                                              ; preds = %128, %125
  %134 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.16, i64 0, i64 0))
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %136
  %140 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 8, i32* %140, align 16
  br label %305

141:                                              ; preds = %136, %133
  %142 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %141
  %145 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 9, i32* %148, align 16
  br label %304

149:                                              ; preds = %144, %141
  %150 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 10, i32* %156, align 16
  br label %303

157:                                              ; preds = %152, %149
  %158 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 11, i32* %164, align 16
  br label %302

165:                                              ; preds = %160, %157
  %166 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.20, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %168
  %172 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 12, i32* %172, align 16
  br label %301

173:                                              ; preds = %168, %165
  %174 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %173
  %177 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0))
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %176
  %180 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 13, i32* %180, align 16
  br label %300

181:                                              ; preds = %176, %173
  %182 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %181
  %185 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.22, i64 0, i64 0))
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %184
  %188 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 13, i32* %188, align 16
  br label %299

189:                                              ; preds = %184, %181
  %190 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i64 0, i64 0))
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %189
  %193 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %192
  %196 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 14, i32* %196, align 16
  br label %298

197:                                              ; preds = %192, %189
  %198 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %197
  %201 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.24, i64 0, i64 0))
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 15, i32* %204, align 16
  br label %297

205:                                              ; preds = %200, %197
  %206 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %205
  %209 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.26, i64 0, i64 0))
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 16, i32* %212, align 16
  br label %296

213:                                              ; preds = %208, %205
  %214 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.27, i64 0, i64 0))
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %213
  %217 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 17, i32* %220, align 16
  br label %295

221:                                              ; preds = %216, %213
  %222 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %223 = icmp eq i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %226 = icmp eq i64 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %224
  %228 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 18, i32* %228, align 16
  br label %294

229:                                              ; preds = %224, %221
  %230 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0))
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %237

235:                                              ; preds = %232
  %236 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 19, i32* %236, align 16
  br label %293

237:                                              ; preds = %232, %229
  %238 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.30, i64 0, i64 0))
  %242 = icmp eq i64 %241, 0
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 20, i32* %244, align 16
  br label %292

245:                                              ; preds = %240, %237
  %246 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.31, i64 0, i64 0))
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %253

251:                                              ; preds = %248
  %252 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 21, i32* %252, align 16
  br label %291

253:                                              ; preds = %248, %245
  %254 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %255 = icmp eq i64 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i64 0, i64 0))
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 22, i32* %260, align 16
  br label %290

261:                                              ; preds = %256, %253
  %262 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i64 0, i64 0))
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %261
  %265 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %267, label %269

267:                                              ; preds = %264
  %268 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 23, i32* %268, align 16
  br label %289

269:                                              ; preds = %264, %261
  %270 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.34, i64 0, i64 0))
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %269
  %273 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 24, i32* %276, align 16
  br label %288

277:                                              ; preds = %272, %269
  %278 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.36, i64 0, i64 0))
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = call i64 @strcmp(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %280
  %284 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 25, i32* %284, align 16
  br label %287

285:                                              ; preds = %280, %277
  %286 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %368

287:                                              ; preds = %283
  br label %288

288:                                              ; preds = %287, %275
  br label %289

289:                                              ; preds = %288, %267
  br label %290

290:                                              ; preds = %289, %259
  br label %291

291:                                              ; preds = %290, %251
  br label %292

292:                                              ; preds = %291, %243
  br label %293

293:                                              ; preds = %292, %235
  br label %294

294:                                              ; preds = %293, %227
  br label %295

295:                                              ; preds = %294, %219
  br label %296

296:                                              ; preds = %295, %211
  br label %297

297:                                              ; preds = %296, %203
  br label %298

298:                                              ; preds = %297, %195
  br label %299

299:                                              ; preds = %298, %187
  br label %300

300:                                              ; preds = %299, %179
  br label %301

301:                                              ; preds = %300, %171
  br label %302

302:                                              ; preds = %301, %163
  br label %303

303:                                              ; preds = %302, %155
  br label %304

304:                                              ; preds = %303, %147
  br label %305

305:                                              ; preds = %304, %139
  br label %306

306:                                              ; preds = %305, %131
  br label %307

307:                                              ; preds = %306, %123
  br label %308

308:                                              ; preds = %307, %115
  br label %309

309:                                              ; preds = %308, %107
  br label %310

310:                                              ; preds = %309, %99
  br label %311

311:                                              ; preds = %310, %91
  br label %312

312:                                              ; preds = %311, %83
  br label %313

313:                                              ; preds = %312, %75
  br label %316

314:                                              ; preds = %59
  %315 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.38, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %368

316:                                              ; preds = %313
  br label %317

317:                                              ; preds = %358, %316
  br label %318

318:                                              ; preds = %317
  %319 = load i32, i32* @MAX_LINE_SIZE, align 4
  %320 = load i32*, i32** %6, align 8
  %321 = call i32* @fgets(i8* %22, i32 %319, i32* %320)
  %322 = icmp eq i32* %321, null
  br i1 %322, label %323, label %324

323:                                              ; preds = %318
  br label %361

324:                                              ; preds = %318
  store i64 1, i64* %10, align 8
  br label %325

325:                                              ; preds = %357, %324
  %326 = load i64, i64* %10, align 8
  %327 = sub i64 %326, 1
  %328 = mul i64 %327, 5
  %329 = getelementptr inbounds i8, i8* %22, i64 %328
  %330 = call i32 (i8*, i8*, ...) @sscanf(i8* %329, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0), i32* %13)
  %331 = icmp eq i32 %330, 1
  br i1 %331, label %332, label %358

332:                                              ; preds = %325
  %333 = load i32, i32* %13, align 4
  %334 = load i64, i64* %10, align 8
  %335 = getelementptr inbounds i32, i32* %19, i64 %334
  store i32 %333, i32* %335, align 4
  %336 = load i64, i64* %10, align 8
  %337 = add i64 %336, 1
  store i64 %337, i64* %10, align 8
  %338 = load i64, i64* %10, align 8
  %339 = sub i64 %338, 1
  %340 = mul i64 %339, 5
  %341 = sub i64 %340, 1
  %342 = getelementptr inbounds i8, i8* %22, i64 %341
  %343 = load i8, i8* %342, align 1
  %344 = sext i8 %343 to i32
  %345 = icmp ne i32 %344, 44
  br i1 %345, label %346, label %347

346:                                              ; preds = %332
  br label %358

347:                                              ; preds = %332
  %348 = load i32, i32* @MAX_LINE_SIZE, align 4
  %349 = sext i32 %348 to i64
  %350 = load i64, i64* %10, align 8
  %351 = sub i64 %350, 1
  %352 = mul i64 %351, 5
  %353 = icmp ult i64 %349, %352
  br i1 %353, label %354, label %356

354:                                              ; preds = %347
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.40, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %368

356:                                              ; preds = %347
  br label %357

357:                                              ; preds = %356
  br label %325

358:                                              ; preds = %346, %325
  %359 = load i64, i64* %10, align 8
  %360 = call i32 @LLVMFuzzerTestOneInput(i32* %19, i64 %359)
  br label %317

361:                                              ; preds = %323
  %362 = load i32*, i32** %6, align 8
  %363 = call i32 @fclose(i32* %362)
  br label %364

364:                                              ; preds = %361
  %365 = load i32, i32* %14, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %14, align 4
  br label %33

367:                                              ; preds = %58, %33
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %368

368:                                              ; preds = %367, %354, %314, %285, %67, %46, %31
  %369 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %369)
  %370 = load i32, i32* %3, align 4
  ret i32 %370
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32* @fgets(i8*, i32, i32*) #2

declare dso_local i32 @sscanf(i8*, i8*, ...) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @LLVMFuzzerTestOneInput(i32*, i64) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
