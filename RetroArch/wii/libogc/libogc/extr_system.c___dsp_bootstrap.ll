; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___dsp_bootstrap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___dsp_bootstrap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_dsp_initcode = common dso_local global i8* null, align 8
@_dspReg = common dso_local global i32* null, align 8
@DSPCR_DSPRESET = common dso_local global i32 0, align 4
@DSPCR_DSPINT = common dso_local global i32 0, align 4
@DSPCR_ARINT = common dso_local global i32 0, align 4
@DSPCR_AIINT = common dso_local global i32 0, align 4
@DSPCR_HALT = common dso_local global i32 0, align 4
@DSPCR_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__dsp_bootstrap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dsp_bootstrap() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i8* (...) @SYS_GetArenaHi()
  %4 = getelementptr i8, i8* %3, i64 -128
  %5 = call i32 @memcpy(i8* %4, i8* inttoptr (i64 2164260864 to i8*), i32 128)
  %6 = load i8*, i8** @_dsp_initcode, align 8
  %7 = call i32 @memcpy(i8* inttoptr (i64 2164260864 to i8*), i8* %6, i32 128)
  %8 = call i32 @DCFlushRange(i8* inttoptr (i64 2164260864 to i8*), i32 128)
  %9 = load i32*, i32** @_dspReg, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 9
  store i32 67, i32* %10, align 4
  %11 = load i32, i32* @DSPCR_DSPRESET, align 4
  %12 = load i32, i32* @DSPCR_DSPINT, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @DSPCR_ARINT, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @DSPCR_AIINT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @DSPCR_HALT, align 4
  %19 = or i32 %17, %18
  %20 = load i32*, i32** @_dspReg, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @DSPCR_RES, align 4
  %23 = load i32*, i32** @_dspReg, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 5
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %34, %0
  %28 = load i32*, i32** @_dspReg, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DSPCR_RES, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %27

35:                                               ; preds = %27
  %36 = load i32*, i32** @_dspReg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 0, i32* %37, align 4
  br label %38

38:                                               ; preds = %50, %35
  %39 = load i32*, i32** @_dspReg, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @_SHIFTL(i32 %41, i32 16, i32 16)
  %43 = load i32*, i32** @_dspReg, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 65535
  %47 = or i32 %42, %46
  %48 = and i32 %47, -2147483648
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %38

51:                                               ; preds = %38
  %52 = load i32*, i32** @_dspReg, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  store i32 16777216, i32* %53, align 4
  %54 = load i32*, i32** @_dspReg, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 9
  store i32 0, i32* %55, align 4
  %56 = load i32*, i32** @_dspReg, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 10
  store i32 32, i32* %57, align 4
  %58 = load i32*, i32** @_dspReg, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %1, align 4
  br label %61

61:                                               ; preds = %67, %51
  %62 = load i32, i32* %1, align 4
  %63 = load i32, i32* @DSPCR_ARINT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = xor i1 %65, true
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32*, i32** @_dspReg, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %1, align 4
  br label %61

71:                                               ; preds = %61
  %72 = load i32, i32* %1, align 4
  %73 = load i32*, i32** @_dspReg, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 5
  store i32 %72, i32* %74, align 4
  %75 = call i32 (...) @gettick()
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %81, %71
  %77 = call i32 (...) @gettick()
  %78 = load i32, i32* %2, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp slt i32 %79, 2194
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  br label %76

82:                                               ; preds = %76
  %83 = load i32*, i32** @_dspReg, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  store i32 16777216, i32* %84, align 4
  %85 = load i32*, i32** @_dspReg, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 9
  store i32 0, i32* %86, align 4
  %87 = load i32*, i32** @_dspReg, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 10
  store i32 32, i32* %88, align 4
  %89 = load i32*, i32** @_dspReg, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %1, align 4
  br label %92

92:                                               ; preds = %98, %82
  %93 = load i32, i32* %1, align 4
  %94 = load i32, i32* @DSPCR_ARINT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  br i1 %97, label %98, label %102

98:                                               ; preds = %92
  %99 = load i32*, i32** @_dspReg, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %1, align 4
  br label %92

102:                                              ; preds = %92
  %103 = load i32, i32* %1, align 4
  %104 = load i32*, i32** @_dspReg, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @DSPCR_DSPRESET, align 4
  %107 = xor i32 %106, -1
  %108 = load i32*, i32** @_dspReg, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 5
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %118, %102
  %113 = load i32*, i32** @_dspReg, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 5
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 1024
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %112

119:                                              ; preds = %112
  %120 = load i32, i32* @DSPCR_HALT, align 4
  %121 = xor i32 %120, -1
  %122 = load i32*, i32** @_dspReg, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %133, %119
  %127 = load i32*, i32** @_dspReg, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 2
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, 32768
  %131 = icmp ne i32 %130, 0
  %132 = xor i1 %131, true
  br i1 %132, label %133, label %134

133:                                              ; preds = %126
  br label %126

134:                                              ; preds = %126
  %135 = load i32*, i32** @_dspReg, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 3
  %137 = load i32, i32* %136, align 4
  store i32 %137, i32* %1, align 4
  %138 = load i32, i32* @DSPCR_HALT, align 4
  %139 = load i32*, i32** @_dspReg, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 5
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 4
  %143 = load i32, i32* @DSPCR_DSPRESET, align 4
  %144 = load i32, i32* @DSPCR_DSPINT, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @DSPCR_ARINT, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @DSPCR_AIINT, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @DSPCR_HALT, align 4
  %151 = or i32 %149, %150
  %152 = load i32*, i32** @_dspReg, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @DSPCR_RES, align 4
  %155 = load i32*, i32** @_dspReg, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 5
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %166, %134
  %160 = load i32*, i32** @_dspReg, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @DSPCR_RES, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %159
  br label %159

167:                                              ; preds = %159
  %168 = call i8* (...) @SYS_GetArenaHi()
  %169 = getelementptr i8, i8* %168, i64 -128
  %170 = call i32 @memcpy(i8* inttoptr (i64 2164260864 to i8*), i8* %169, i32 128)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @SYS_GetArenaHi(...) #1

declare dso_local i32 @DCFlushRange(i8*, i32) #1

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @gettick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
