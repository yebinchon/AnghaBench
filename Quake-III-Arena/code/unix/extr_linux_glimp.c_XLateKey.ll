; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_XLateKey.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/unix/extr_linux_glimp.c_XLateKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i32, i8*, i32)* }

@XLateKey.buf = internal global [64 x i8] zeroinitializer, align 16
@K_KP_PGUP = common dso_local global i32 0, align 4
@K_PGUP = common dso_local global i32 0, align 4
@K_KP_PGDN = common dso_local global i32 0, align 4
@K_PGDN = common dso_local global i32 0, align 4
@K_KP_HOME = common dso_local global i32 0, align 4
@K_HOME = common dso_local global i32 0, align 4
@K_KP_END = common dso_local global i32 0, align 4
@K_END = common dso_local global i32 0, align 4
@K_KP_LEFTARROW = common dso_local global i32 0, align 4
@K_LEFTARROW = common dso_local global i32 0, align 4
@K_KP_RIGHTARROW = common dso_local global i32 0, align 4
@K_RIGHTARROW = common dso_local global i32 0, align 4
@K_KP_DOWNARROW = common dso_local global i32 0, align 4
@K_DOWNARROW = common dso_local global i32 0, align 4
@K_KP_UPARROW = common dso_local global i32 0, align 4
@K_UPARROW = common dso_local global i32 0, align 4
@K_ESCAPE = common dso_local global i32 0, align 4
@K_KP_ENTER = common dso_local global i32 0, align 4
@K_ENTER = common dso_local global i32 0, align 4
@K_TAB = common dso_local global i32 0, align 4
@K_F1 = common dso_local global i32 0, align 4
@K_F2 = common dso_local global i32 0, align 4
@K_F3 = common dso_local global i32 0, align 4
@K_F4 = common dso_local global i32 0, align 4
@K_F5 = common dso_local global i32 0, align 4
@K_F6 = common dso_local global i32 0, align 4
@K_F7 = common dso_local global i32 0, align 4
@K_F8 = common dso_local global i32 0, align 4
@K_F9 = common dso_local global i32 0, align 4
@K_F10 = common dso_local global i32 0, align 4
@K_F11 = common dso_local global i32 0, align 4
@K_F12 = common dso_local global i32 0, align 4
@K_BACKSPACE = common dso_local global i32 0, align 4
@K_KP_DEL = common dso_local global i32 0, align 4
@K_DEL = common dso_local global i32 0, align 4
@K_PAUSE = common dso_local global i32 0, align 4
@K_SHIFT = common dso_local global i32 0, align 4
@K_CTRL = common dso_local global i32 0, align 4
@K_ALT = common dso_local global i32 0, align 4
@K_KP_5 = common dso_local global i32 0, align 4
@K_INS = common dso_local global i32 0, align 4
@K_KP_INS = common dso_local global i32 0, align 4
@K_KP_PLUS = common dso_local global i32 0, align 4
@K_KP_MINUS = common dso_local global i32 0, align 4
@K_KP_SLASH = common dso_local global i32 0, align 4
@K_SPACE = common dso_local global i32 0, align 4
@com_developer = common dso_local global %struct.TYPE_4__* null, align 8
@ri = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PRINT_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Warning: XLookupString failed on KeySym %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32*)* @XLateKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @XLateKey(i32* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @XLookupString(i32* %9, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @XLateKey.buf, i64 0, i64 0), i32 64, i32* %6, i32 0)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %183 [
    i32 156, label %12
    i32 170, label %12
    i32 147, label %15
    i32 157, label %18
    i32 175, label %18
    i32 148, label %21
    i32 161, label %24
    i32 172, label %27
    i32 180, label %30
    i32 163, label %33
    i32 177, label %33
    i32 195, label %36
    i32 159, label %39
    i32 174, label %42
    i32 151, label %45
    i32 155, label %48
    i32 173, label %51
    i32 144, label %54
    i32 164, label %57
    i32 176, label %57
    i32 196, label %60
    i32 152, label %63
    i32 171, label %63
    i32 140, label %66
    i32 194, label %69
    i32 162, label %72
    i32 145, label %75
    i32 141, label %78
    i32 192, label %81
    i32 188, label %84
    i32 187, label %87
    i32 186, label %90
    i32 185, label %93
    i32 184, label %96
    i32 183, label %99
    i32 182, label %102
    i32 181, label %105
    i32 191, label %108
    i32 190, label %111
    i32 189, label %114
    i32 200, label %117
    i32 166, label %120
    i32 167, label %120
    i32 197, label %123
    i32 146, label %126
    i32 143, label %129
    i32 142, label %129
    i32 193, label %132
    i32 199, label %132
    i32 198, label %132
    i32 202, label %135
    i32 150, label %135
    i32 201, label %135
    i32 149, label %135
    i32 168, label %138
    i32 179, label %141
    i32 160, label %144
    i32 178, label %144
    i32 158, label %147
    i32 169, label %149
    i32 153, label %152
    i32 165, label %155
    i32 134, label %158
    i32 136, label %160
    i32 133, label %162
    i32 135, label %164
    i32 130, label %166
    i32 138, label %168
    i32 139, label %170
    i32 137, label %172
    i32 132, label %174
    i32 131, label %176
    i32 128, label %178
    i32 129, label %180
    i32 154, label %180
  ]

12:                                               ; preds = %2, %2
  %13 = load i32, i32* @K_KP_PGUP, align 4
  %14 = load i32*, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  br label %231

15:                                               ; preds = %2
  %16 = load i32, i32* @K_PGUP, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  br label %231

18:                                               ; preds = %2, %2
  %19 = load i32, i32* @K_KP_PGDN, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 %19, i32* %20, align 4
  br label %231

21:                                               ; preds = %2
  %22 = load i32, i32* @K_PGDN, align 4
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %231

24:                                               ; preds = %2
  %25 = load i32, i32* @K_KP_HOME, align 4
  %26 = load i32*, i32** %5, align 8
  store i32 %25, i32* %26, align 4
  br label %231

27:                                               ; preds = %2
  %28 = load i32, i32* @K_KP_HOME, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %231

30:                                               ; preds = %2
  %31 = load i32, i32* @K_HOME, align 4
  %32 = load i32*, i32** %5, align 8
  store i32 %31, i32* %32, align 4
  br label %231

33:                                               ; preds = %2, %2
  %34 = load i32, i32* @K_KP_END, align 4
  %35 = load i32*, i32** %5, align 8
  store i32 %34, i32* %35, align 4
  br label %231

36:                                               ; preds = %2
  %37 = load i32, i32* @K_END, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  br label %231

39:                                               ; preds = %2
  %40 = load i32, i32* @K_KP_LEFTARROW, align 4
  %41 = load i32*, i32** %5, align 8
  store i32 %40, i32* %41, align 4
  br label %231

42:                                               ; preds = %2
  %43 = load i32, i32* @K_KP_LEFTARROW, align 4
  %44 = load i32*, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  br label %231

45:                                               ; preds = %2
  %46 = load i32, i32* @K_LEFTARROW, align 4
  %47 = load i32*, i32** %5, align 8
  store i32 %46, i32* %47, align 4
  br label %231

48:                                               ; preds = %2
  %49 = load i32, i32* @K_KP_RIGHTARROW, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  br label %231

51:                                               ; preds = %2
  %52 = load i32, i32* @K_KP_RIGHTARROW, align 4
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %231

54:                                               ; preds = %2
  %55 = load i32, i32* @K_RIGHTARROW, align 4
  %56 = load i32*, i32** %5, align 8
  store i32 %55, i32* %56, align 4
  br label %231

57:                                               ; preds = %2, %2
  %58 = load i32, i32* @K_KP_DOWNARROW, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  br label %231

60:                                               ; preds = %2
  %61 = load i32, i32* @K_DOWNARROW, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %231

63:                                               ; preds = %2, %2
  %64 = load i32, i32* @K_KP_UPARROW, align 4
  %65 = load i32*, i32** %5, align 8
  store i32 %64, i32* %65, align 4
  br label %231

66:                                               ; preds = %2
  %67 = load i32, i32* @K_UPARROW, align 4
  %68 = load i32*, i32** %5, align 8
  store i32 %67, i32* %68, align 4
  br label %231

69:                                               ; preds = %2
  %70 = load i32, i32* @K_ESCAPE, align 4
  %71 = load i32*, i32** %5, align 8
  store i32 %70, i32* %71, align 4
  br label %231

72:                                               ; preds = %2
  %73 = load i32, i32* @K_KP_ENTER, align 4
  %74 = load i32*, i32** %5, align 8
  store i32 %73, i32* %74, align 4
  br label %231

75:                                               ; preds = %2
  %76 = load i32, i32* @K_ENTER, align 4
  %77 = load i32*, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  br label %231

78:                                               ; preds = %2
  %79 = load i32, i32* @K_TAB, align 4
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  br label %231

81:                                               ; preds = %2
  %82 = load i32, i32* @K_F1, align 4
  %83 = load i32*, i32** %5, align 8
  store i32 %82, i32* %83, align 4
  br label %231

84:                                               ; preds = %2
  %85 = load i32, i32* @K_F2, align 4
  %86 = load i32*, i32** %5, align 8
  store i32 %85, i32* %86, align 4
  br label %231

87:                                               ; preds = %2
  %88 = load i32, i32* @K_F3, align 4
  %89 = load i32*, i32** %5, align 8
  store i32 %88, i32* %89, align 4
  br label %231

90:                                               ; preds = %2
  %91 = load i32, i32* @K_F4, align 4
  %92 = load i32*, i32** %5, align 8
  store i32 %91, i32* %92, align 4
  br label %231

93:                                               ; preds = %2
  %94 = load i32, i32* @K_F5, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  br label %231

96:                                               ; preds = %2
  %97 = load i32, i32* @K_F6, align 4
  %98 = load i32*, i32** %5, align 8
  store i32 %97, i32* %98, align 4
  br label %231

99:                                               ; preds = %2
  %100 = load i32, i32* @K_F7, align 4
  %101 = load i32*, i32** %5, align 8
  store i32 %100, i32* %101, align 4
  br label %231

102:                                              ; preds = %2
  %103 = load i32, i32* @K_F8, align 4
  %104 = load i32*, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  br label %231

105:                                              ; preds = %2
  %106 = load i32, i32* @K_F9, align 4
  %107 = load i32*, i32** %5, align 8
  store i32 %106, i32* %107, align 4
  br label %231

108:                                              ; preds = %2
  %109 = load i32, i32* @K_F10, align 4
  %110 = load i32*, i32** %5, align 8
  store i32 %109, i32* %110, align 4
  br label %231

111:                                              ; preds = %2
  %112 = load i32, i32* @K_F11, align 4
  %113 = load i32*, i32** %5, align 8
  store i32 %112, i32* %113, align 4
  br label %231

114:                                              ; preds = %2
  %115 = load i32, i32* @K_F12, align 4
  %116 = load i32*, i32** %5, align 8
  store i32 %115, i32* %116, align 4
  br label %231

117:                                              ; preds = %2
  %118 = load i32, i32* @K_BACKSPACE, align 4
  %119 = load i32*, i32** %5, align 8
  store i32 %118, i32* %119, align 4
  br label %231

120:                                              ; preds = %2, %2
  %121 = load i32, i32* @K_KP_DEL, align 4
  %122 = load i32*, i32** %5, align 8
  store i32 %121, i32* %122, align 4
  br label %231

123:                                              ; preds = %2
  %124 = load i32, i32* @K_DEL, align 4
  %125 = load i32*, i32** %5, align 8
  store i32 %124, i32* %125, align 4
  br label %231

126:                                              ; preds = %2
  %127 = load i32, i32* @K_PAUSE, align 4
  %128 = load i32*, i32** %5, align 8
  store i32 %127, i32* %128, align 4
  br label %231

129:                                              ; preds = %2, %2
  %130 = load i32, i32* @K_SHIFT, align 4
  %131 = load i32*, i32** %5, align 8
  store i32 %130, i32* %131, align 4
  br label %231

132:                                              ; preds = %2, %2, %2
  %133 = load i32, i32* @K_CTRL, align 4
  %134 = load i32*, i32** %5, align 8
  store i32 %133, i32* %134, align 4
  br label %231

135:                                              ; preds = %2, %2, %2, %2
  %136 = load i32, i32* @K_ALT, align 4
  %137 = load i32*, i32** %5, align 8
  store i32 %136, i32* %137, align 4
  br label %231

138:                                              ; preds = %2
  %139 = load i32, i32* @K_KP_5, align 4
  %140 = load i32*, i32** %5, align 8
  store i32 %139, i32* %140, align 4
  br label %231

141:                                              ; preds = %2
  %142 = load i32, i32* @K_INS, align 4
  %143 = load i32*, i32** %5, align 8
  store i32 %142, i32* %143, align 4
  br label %231

144:                                              ; preds = %2, %2
  %145 = load i32, i32* @K_KP_INS, align 4
  %146 = load i32*, i32** %5, align 8
  store i32 %145, i32* %146, align 4
  br label %231

147:                                              ; preds = %2
  %148 = load i32*, i32** %5, align 8
  store i32 42, i32* %148, align 4
  br label %231

149:                                              ; preds = %2
  %150 = load i32, i32* @K_KP_PLUS, align 4
  %151 = load i32*, i32** %5, align 8
  store i32 %150, i32* %151, align 4
  br label %231

152:                                              ; preds = %2
  %153 = load i32, i32* @K_KP_MINUS, align 4
  %154 = load i32*, i32** %5, align 8
  store i32 %153, i32* %154, align 4
  br label %231

155:                                              ; preds = %2
  %156 = load i32, i32* @K_KP_SLASH, align 4
  %157 = load i32*, i32** %5, align 8
  store i32 %156, i32* %157, align 4
  br label %231

158:                                              ; preds = %2
  %159 = load i32*, i32** %5, align 8
  store i32 49, i32* %159, align 4
  br label %231

160:                                              ; preds = %2
  %161 = load i32*, i32** %5, align 8
  store i32 50, i32* %161, align 4
  br label %231

162:                                              ; preds = %2
  %163 = load i32*, i32** %5, align 8
  store i32 51, i32* %163, align 4
  br label %231

164:                                              ; preds = %2
  %165 = load i32*, i32** %5, align 8
  store i32 52, i32* %165, align 4
  br label %231

166:                                              ; preds = %2
  %167 = load i32*, i32** %5, align 8
  store i32 53, i32* %167, align 4
  br label %231

168:                                              ; preds = %2
  %169 = load i32*, i32** %5, align 8
  store i32 54, i32* %169, align 4
  br label %231

170:                                              ; preds = %2
  %171 = load i32*, i32** %5, align 8
  store i32 55, i32* %171, align 4
  br label %231

172:                                              ; preds = %2
  %173 = load i32*, i32** %5, align 8
  store i32 56, i32* %173, align 4
  br label %231

174:                                              ; preds = %2
  %175 = load i32*, i32** %5, align 8
  store i32 57, i32* %175, align 4
  br label %231

176:                                              ; preds = %2
  %177 = load i32*, i32** %5, align 8
  store i32 48, i32* %177, align 4
  br label %231

178:                                              ; preds = %2
  %179 = load i32*, i32** %5, align 8
  store i32 126, i32* %179, align 4
  br label %231

180:                                              ; preds = %2, %2
  %181 = load i32, i32* @K_SPACE, align 4
  %182 = load i32*, i32** %5, align 8
  store i32 %181, i32* %182, align 4
  br label %231

183:                                              ; preds = %2
  %184 = load i32, i32* %7, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** @com_developer, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %186
  %192 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ri, i32 0, i32 0), align 8
  %193 = load i32, i32* @PRINT_ALL, align 4
  %194 = load i32, i32* %6, align 4
  %195 = call i32 %192(i32 %193, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %191, %186
  store i8* null, i8** %3, align 8
  br label %232

197:                                              ; preds = %183
  %198 = load i8, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @XLateKey.buf, i64 0, i64 0), align 16
  %199 = zext i8 %198 to i32
  %200 = load i32*, i32** %5, align 8
  store i32 %199, i32* %200, align 4
  %201 = load i32*, i32** %5, align 8
  %202 = load i32, i32* %201, align 4
  %203 = icmp sge i32 %202, 65
  br i1 %203, label %204, label %214

204:                                              ; preds = %197
  %205 = load i32*, i32** %5, align 8
  %206 = load i32, i32* %205, align 4
  %207 = icmp sle i32 %206, 90
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load i32*, i32** %5, align 8
  %210 = load i32, i32* %209, align 4
  %211 = sub nsw i32 %210, 65
  %212 = add nsw i32 %211, 97
  %213 = load i32*, i32** %5, align 8
  store i32 %212, i32* %213, align 4
  br label %229

214:                                              ; preds = %204, %197
  %215 = load i32*, i32** %5, align 8
  %216 = load i32, i32* %215, align 4
  %217 = icmp sge i32 %216, 1
  br i1 %217, label %218, label %228

218:                                              ; preds = %214
  %219 = load i32*, i32** %5, align 8
  %220 = load i32, i32* %219, align 4
  %221 = icmp sle i32 %220, 26
  br i1 %221, label %222, label %228

222:                                              ; preds = %218
  %223 = load i32*, i32** %5, align 8
  %224 = load i32, i32* %223, align 4
  %225 = add nsw i32 %224, 97
  %226 = sub nsw i32 %225, 1
  %227 = load i32*, i32** %5, align 8
  store i32 %226, i32* %227, align 4
  br label %228

228:                                              ; preds = %222, %218, %214
  br label %229

229:                                              ; preds = %228, %208
  br label %230

230:                                              ; preds = %229
  br label %231

231:                                              ; preds = %230, %180, %178, %176, %174, %172, %170, %168, %166, %164, %162, %160, %158, %155, %152, %149, %147, %144, %141, %138, %135, %132, %129, %126, %123, %120, %117, %114, %111, %108, %105, %102, %99, %96, %93, %90, %87, %84, %81, %78, %75, %72, %69, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36, %33, %30, %27, %24, %21, %18, %15, %12
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @XLateKey.buf, i64 0, i64 0), i8** %3, align 8
  br label %232

232:                                              ; preds = %231, %196
  %233 = load i8*, i8** %3, align 8
  ret i8* %233
}

declare dso_local i32 @XLookupString(i32*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
