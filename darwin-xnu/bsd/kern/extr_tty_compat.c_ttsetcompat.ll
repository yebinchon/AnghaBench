; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttsetcompat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_compat.c_ttsetcompat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i8*, i8* }
%struct.termios = type { i32*, i8*, i8* }
%struct.sgttyb = type { i32, i32, i32, i32, i32 }
%struct.tchars = type { i32, i32, i32, i32, i32, i32 }
%struct.ltchars = type { i32, i32, i32, i32, i32, i32 }

@MAX_SPEED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@compatspeeds = common dso_local global i32 0, align 4
@compatspcodes = common dso_local global i8** null, align 8
@VERASE = common dso_local global i64 0, align 8
@VKILL = common dso_local global i64 0, align 8
@TIOCSETAF = common dso_local global i32 0, align 4
@TIOCSETA = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@VQUIT = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@VEOF = common dso_local global i64 0, align 8
@VEOL = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@VEOL2 = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@VDSUSP = common dso_local global i64 0, align 8
@VREPRINT = common dso_local global i64 0, align 8
@VDISCARD = common dso_local global i64 0, align 8
@VWERASE = common dso_local global i64 0, align 8
@VLNEXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32*, i64, %struct.termios*)* @ttsetcompat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttsetcompat(%struct.tty* %0, i32* %1, i64 %2, %struct.termios* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.termios*, align 8
  %10 = alloca %struct.sgttyb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tchars*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.ltchars*, align 8
  %15 = alloca i32*, align 8
  store %struct.tty* %0, %struct.tty** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.termios* %3, %struct.termios** %9, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %283 [
    i32 129, label %18
    i32 130, label %18
    i32 131, label %129
    i32 128, label %183
    i32 133, label %227
    i32 134, label %227
    i32 132, label %227
  ]

18:                                               ; preds = %4, %4
  %19 = load i64, i64* %8, align 8
  %20 = inttoptr i64 %19 to %struct.sgttyb*
  store %struct.sgttyb* %20, %struct.sgttyb** %10, align 8
  %21 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %22 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @MAX_SPEED, align 4
  %25 = icmp sgt i32 %23, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %18
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %284

31:                                               ; preds = %26
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.tty*, %struct.tty** %6, align 8
  %34 = getelementptr inbounds %struct.tty, %struct.tty* %33, i32 0, i32 2
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* @compatspeeds, align 4
  %37 = call i32 @ttcompatspeedtab(i8* %35, i32 %36)
  %38 = icmp ne i32 %32, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %31
  %40 = load i8**, i8*** @compatspcodes, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8*, i8** %40, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = load %struct.termios*, %struct.termios** %9, align 8
  %46 = getelementptr inbounds %struct.termios, %struct.termios* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  br label %53

47:                                               ; preds = %31
  %48 = load %struct.tty*, %struct.tty** %6, align 8
  %49 = getelementptr inbounds %struct.tty, %struct.tty* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.termios*, %struct.termios** %9, align 8
  %52 = getelementptr inbounds %struct.termios, %struct.termios* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %39
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %56 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* @MAX_SPEED, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60, %54
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %5, align 4
  br label %284

65:                                               ; preds = %60
  %66 = load i32, i32* %11, align 4
  %67 = load %struct.tty*, %struct.tty** %6, align 8
  %68 = getelementptr inbounds %struct.tty, %struct.tty* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @compatspeeds, align 4
  %71 = call i32 @ttcompatspeedtab(i8* %69, i32 %70)
  %72 = icmp ne i32 %66, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %65
  %74 = load i8**, i8*** @compatspcodes, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8*, i8** %74, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.termios*, %struct.termios** %9, align 8
  %80 = getelementptr inbounds %struct.termios, %struct.termios* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  br label %87

81:                                               ; preds = %65
  %82 = load %struct.tty*, %struct.tty** %6, align 8
  %83 = getelementptr inbounds %struct.tty, %struct.tty* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.termios*, %struct.termios** %9, align 8
  %86 = getelementptr inbounds %struct.termios, %struct.termios* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %81, %73
  br label %88

88:                                               ; preds = %87
  %89 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %90 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.termios*, %struct.termios** %9, align 8
  %93 = getelementptr inbounds %struct.termios, %struct.termios* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i64, i64* @VERASE, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %98 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.termios*, %struct.termios** %9, align 8
  %101 = getelementptr inbounds %struct.termios, %struct.termios* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i64, i64* @VKILL, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %99, i32* %104, align 4
  %105 = load %struct.tty*, %struct.tty** %6, align 8
  %106 = getelementptr inbounds %struct.tty, %struct.tty* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, -65536
  %109 = load %struct.sgttyb*, %struct.sgttyb** %10, align 8
  %110 = getelementptr inbounds %struct.sgttyb, %struct.sgttyb* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = and i32 %111, 65535
  %113 = or i32 %108, %112
  %114 = load %struct.tty*, %struct.tty** %6, align 8
  %115 = getelementptr inbounds %struct.tty, %struct.tty* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  %116 = load %struct.tty*, %struct.tty** %6, align 8
  %117 = load %struct.termios*, %struct.termios** %9, align 8
  %118 = call i32 @ttcompatsetflags(%struct.tty* %116, %struct.termios* %117)
  %119 = load i32*, i32** %7, align 8
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 129
  br i1 %121, label %122, label %124

122:                                              ; preds = %88
  %123 = load i32, i32* @TIOCSETAF, align 4
  br label %126

124:                                              ; preds = %88
  %125 = load i32, i32* @TIOCSETA, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  %128 = load i32*, i32** %7, align 8
  store i32 %127, i32* %128, align 4
  br label %283

129:                                              ; preds = %4
  %130 = load i64, i64* %8, align 8
  %131 = inttoptr i64 %130 to %struct.tchars*
  store %struct.tchars* %131, %struct.tchars** %12, align 8
  %132 = load %struct.termios*, %struct.termios** %9, align 8
  %133 = getelementptr inbounds %struct.termios, %struct.termios* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  store i32* %134, i32** %13, align 8
  %135 = load %struct.tchars*, %struct.tchars** %12, align 8
  %136 = getelementptr inbounds %struct.tchars, %struct.tchars* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load i32*, i32** %13, align 8
  %139 = load i64, i64* @VINTR, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load %struct.tchars*, %struct.tchars** %12, align 8
  %142 = getelementptr inbounds %struct.tchars, %struct.tchars* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32*, i32** %13, align 8
  %145 = load i64, i64* @VQUIT, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  store i32 %143, i32* %146, align 4
  %147 = load %struct.tchars*, %struct.tchars** %12, align 8
  %148 = getelementptr inbounds %struct.tchars, %struct.tchars* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32*, i32** %13, align 8
  %151 = load i64, i64* @VSTART, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load %struct.tchars*, %struct.tchars** %12, align 8
  %154 = getelementptr inbounds %struct.tchars, %struct.tchars* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = load i64, i64* @VSTOP, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  store i32 %155, i32* %158, align 4
  %159 = load %struct.tchars*, %struct.tchars** %12, align 8
  %160 = getelementptr inbounds %struct.tchars, %struct.tchars* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = load i32*, i32** %13, align 8
  %163 = load i64, i64* @VEOF, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 %161, i32* %164, align 4
  %165 = load %struct.tchars*, %struct.tchars** %12, align 8
  %166 = getelementptr inbounds %struct.tchars, %struct.tchars* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = load i64, i64* @VEOL, align 8
  %170 = getelementptr inbounds i32, i32* %168, i64 %169
  store i32 %167, i32* %170, align 4
  %171 = load %struct.tchars*, %struct.tchars** %12, align 8
  %172 = getelementptr inbounds %struct.tchars, %struct.tchars* %171, i32 0, i32 5
  %173 = load i32, i32* %172, align 4
  %174 = icmp eq i32 %173, -1
  br i1 %174, label %175, label %180

175:                                              ; preds = %129
  %176 = load i32, i32* @_POSIX_VDISABLE, align 4
  %177 = load i32*, i32** %13, align 8
  %178 = load i64, i64* @VEOL2, align 8
  %179 = getelementptr inbounds i32, i32* %177, i64 %178
  store i32 %176, i32* %179, align 4
  br label %180

180:                                              ; preds = %175, %129
  %181 = load i32, i32* @TIOCSETA, align 4
  %182 = load i32*, i32** %7, align 8
  store i32 %181, i32* %182, align 4
  br label %283

183:                                              ; preds = %4
  %184 = load i64, i64* %8, align 8
  %185 = inttoptr i64 %184 to %struct.ltchars*
  store %struct.ltchars* %185, %struct.ltchars** %14, align 8
  %186 = load %struct.termios*, %struct.termios** %9, align 8
  %187 = getelementptr inbounds %struct.termios, %struct.termios* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  store i32* %188, i32** %15, align 8
  %189 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %190 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32*, i32** %15, align 8
  %193 = load i64, i64* @VSUSP, align 8
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32 %191, i32* %194, align 4
  %195 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %196 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %15, align 8
  %199 = load i64, i64* @VDSUSP, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  store i32 %197, i32* %200, align 4
  %201 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %202 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %15, align 8
  %205 = load i64, i64* @VREPRINT, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  store i32 %203, i32* %206, align 4
  %207 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %208 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32*, i32** %15, align 8
  %211 = load i64, i64* @VDISCARD, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  store i32 %209, i32* %212, align 4
  %213 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %214 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %15, align 8
  %217 = load i64, i64* @VWERASE, align 8
  %218 = getelementptr inbounds i32, i32* %216, i64 %217
  store i32 %215, i32* %218, align 4
  %219 = load %struct.ltchars*, %struct.ltchars** %14, align 8
  %220 = getelementptr inbounds %struct.ltchars, %struct.ltchars* %219, i32 0, i32 5
  %221 = load i32, i32* %220, align 4
  %222 = load i32*, i32** %15, align 8
  %223 = load i64, i64* @VLNEXT, align 8
  %224 = getelementptr inbounds i32, i32* %222, i64 %223
  store i32 %221, i32* %224, align 4
  %225 = load i32, i32* @TIOCSETA, align 4
  %226 = load i32*, i32** %7, align 8
  store i32 %225, i32* %226, align 4
  br label %283

227:                                              ; preds = %4, %4, %4
  %228 = load i32*, i32** %7, align 8
  %229 = load i32, i32* %228, align 4
  %230 = icmp eq i32 %229, 132
  br i1 %230, label %231, label %243

231:                                              ; preds = %227
  %232 = load %struct.tty*, %struct.tty** %6, align 8
  %233 = getelementptr inbounds %struct.tty, %struct.tty* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = and i32 %234, 65535
  %236 = load i64, i64* %8, align 8
  %237 = inttoptr i64 %236 to i32*
  %238 = load i32, i32* %237, align 4
  %239 = shl i32 %238, 16
  %240 = or i32 %235, %239
  %241 = load %struct.tty*, %struct.tty** %6, align 8
  %242 = getelementptr inbounds %struct.tty, %struct.tty* %241, i32 0, i32 0
  store i32 %240, i32* %242, align 8
  br label %277

243:                                              ; preds = %227
  %244 = load %struct.tty*, %struct.tty** %6, align 8
  %245 = call i32 @ttcompatgetflags(%struct.tty* %244)
  %246 = and i32 %245, -65536
  %247 = load %struct.tty*, %struct.tty** %6, align 8
  %248 = getelementptr inbounds %struct.tty, %struct.tty* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = and i32 %249, 65535
  %251 = or i32 %246, %250
  %252 = load %struct.tty*, %struct.tty** %6, align 8
  %253 = getelementptr inbounds %struct.tty, %struct.tty* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 8
  %254 = load i32*, i32** %7, align 8
  %255 = load i32, i32* %254, align 4
  %256 = icmp eq i32 %255, 133
  br i1 %256, label %257, label %266

257:                                              ; preds = %243
  %258 = load i64, i64* %8, align 8
  %259 = inttoptr i64 %258 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = shl i32 %260, 16
  %262 = load %struct.tty*, %struct.tty** %6, align 8
  %263 = getelementptr inbounds %struct.tty, %struct.tty* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  br label %276

266:                                              ; preds = %243
  %267 = load i64, i64* %8, align 8
  %268 = inttoptr i64 %267 to i32*
  %269 = load i32, i32* %268, align 4
  %270 = shl i32 %269, 16
  %271 = xor i32 %270, -1
  %272 = load %struct.tty*, %struct.tty** %6, align 8
  %273 = getelementptr inbounds %struct.tty, %struct.tty* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = and i32 %274, %271
  store i32 %275, i32* %273, align 8
  br label %276

276:                                              ; preds = %266, %257
  br label %277

277:                                              ; preds = %276, %231
  %278 = load %struct.tty*, %struct.tty** %6, align 8
  %279 = load %struct.termios*, %struct.termios** %9, align 8
  %280 = call i32 @ttcompatsetlflags(%struct.tty* %278, %struct.termios* %279)
  %281 = load i32, i32* @TIOCSETA, align 4
  %282 = load i32*, i32** %7, align 8
  store i32 %281, i32* %282, align 4
  br label %283

283:                                              ; preds = %4, %277, %183, %180, %126
  store i32 0, i32* %5, align 4
  br label %284

284:                                              ; preds = %283, %63, %29
  %285 = load i32, i32* %5, align 4
  ret i32 %285
}

declare dso_local i32 @ttcompatspeedtab(i8*, i32) #1

declare dso_local i32 @ttcompatsetflags(%struct.tty*, %struct.termios*) #1

declare dso_local i32 @ttcompatgetflags(%struct.tty*) #1

declare dso_local i32 @ttcompatsetlflags(%struct.tty*, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
