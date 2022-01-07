; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_aes_gen_tables.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_aes.c_aes_gen_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RCON = common dso_local global i32* null, align 8
@FSb = common dso_local global i32* null, align 8
@RSb = common dso_local global i32* null, align 8
@FT0 = common dso_local global i32* null, align 8
@FT1 = common dso_local global i32* null, align 8
@FT2 = common dso_local global i32* null, align 8
@FT3 = common dso_local global i8** null, align 8
@RT0 = common dso_local global i32* null, align 8
@RT1 = common dso_local global i32* null, align 8
@RT2 = common dso_local global i32* null, align 8
@RT3 = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @aes_gen_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aes_gen_tables() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [256 x i32], align 16
  %6 = alloca [256 x i32], align 16
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %7

7:                                                ; preds = %24, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %27

10:                                               ; preds = %7
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* %1, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %13
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %17
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = call i32 @XTIME(i32 %20)
  %22 = xor i32 %19, %21
  %23 = and i32 %22, 255
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %10
  %25 = load i32, i32* %1, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %1, align 4
  br label %7

27:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  store i32 1, i32* %2, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %1, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %43

31:                                               ; preds = %28
  %32 = load i32, i32* %2, align 4
  %33 = load i32*, i32** @RCON, align 8
  %34 = load i32, i32* %1, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @XTIME(i32 %37)
  %39 = and i32 %38, 255
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %31
  %41 = load i32, i32* %1, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %1, align 4
  br label %28

43:                                               ; preds = %28
  %44 = load i32*, i32** @FSb, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 99, i32* %45, align 4
  %46 = load i32*, i32** @RSb, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 99
  store i32 0, i32* %47, align 4
  store i32 1, i32* %1, align 4
  br label %48

48:                                               ; preds = %112, %43
  %49 = load i32, i32* %1, align 4
  %50 = icmp slt i32 %49, 256
  br i1 %50, label %51, label %115

51:                                               ; preds = %48
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 255, %55
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [256 x i32], [256 x i32]* %5, i64 0, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %2, align 4
  %60 = load i32, i32* %2, align 4
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = shl i32 %61, 1
  %63 = load i32, i32* %3, align 4
  %64 = ashr i32 %63, 7
  %65 = or i32 %62, %64
  %66 = and i32 %65, 255
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* %2, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %2, align 4
  %70 = load i32, i32* %3, align 4
  %71 = shl i32 %70, 1
  %72 = load i32, i32* %3, align 4
  %73 = ashr i32 %72, 7
  %74 = or i32 %71, %73
  %75 = and i32 %74, 255
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* %2, align 4
  %78 = xor i32 %77, %76
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %3, align 4
  %80 = shl i32 %79, 1
  %81 = load i32, i32* %3, align 4
  %82 = ashr i32 %81, 7
  %83 = or i32 %80, %82
  %84 = and i32 %83, 255
  store i32 %84, i32* %3, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* %2, align 4
  %87 = xor i32 %86, %85
  store i32 %87, i32* %2, align 4
  %88 = load i32, i32* %3, align 4
  %89 = shl i32 %88, 1
  %90 = load i32, i32* %3, align 4
  %91 = ashr i32 %90, 7
  %92 = or i32 %89, %91
  %93 = and i32 %92, 255
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* %3, align 4
  %95 = xor i32 %94, 99
  %96 = load i32, i32* %2, align 4
  %97 = xor i32 %96, %95
  store i32 %97, i32* %2, align 4
  %98 = load i32, i32* %2, align 4
  %99 = trunc i32 %98 to i8
  %100 = zext i8 %99 to i32
  %101 = load i32*, i32** @FSb, align 8
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %1, align 4
  %106 = trunc i32 %105 to i8
  %107 = zext i8 %106 to i32
  %108 = load i32*, i32** @RSb, align 8
  %109 = load i32, i32* %2, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %51
  %113 = load i32, i32* %1, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %1, align 4
  br label %48

115:                                              ; preds = %48
  store i32 0, i32* %1, align 4
  br label %116

116:                                              ; preds = %237, %115
  %117 = load i32, i32* %1, align 4
  %118 = icmp slt i32 %117, 256
  br i1 %118, label %119, label %240

119:                                              ; preds = %116
  %120 = load i32*, i32** @FSb, align 8
  %121 = load i32, i32* %1, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %2, align 4
  %125 = load i32, i32* %2, align 4
  %126 = call i32 @XTIME(i32 %125)
  %127 = and i32 %126, 255
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* %2, align 4
  %130 = xor i32 %128, %129
  %131 = and i32 %130, 255
  store i32 %131, i32* %4, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load i32, i32* %2, align 4
  %134 = shl i32 %133, 8
  %135 = xor i32 %132, %134
  %136 = load i32, i32* %2, align 4
  %137 = shl i32 %136, 16
  %138 = xor i32 %135, %137
  %139 = load i32, i32* %4, align 4
  %140 = shl i32 %139, 24
  %141 = xor i32 %138, %140
  %142 = load i32*, i32** @FT0, align 8
  %143 = load i32, i32* %1, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  %146 = load i32*, i32** @FT0, align 8
  %147 = load i32, i32* %1, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @ROTL8(i32 %150)
  %152 = ptrtoint i8* %151 to i32
  %153 = load i32*, i32** @FT1, align 8
  %154 = load i32, i32* %1, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %152, i32* %156, align 4
  %157 = load i32*, i32** @FT1, align 8
  %158 = load i32, i32* %1, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @ROTL8(i32 %161)
  %163 = ptrtoint i8* %162 to i32
  %164 = load i32*, i32** @FT2, align 8
  %165 = load i32, i32* %1, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %163, i32* %167, align 4
  %168 = load i32*, i32** @FT2, align 8
  %169 = load i32, i32* %1, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @ROTL8(i32 %172)
  %174 = load i8**, i8*** @FT3, align 8
  %175 = load i32, i32* %1, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i8*, i8** %174, i64 %176
  store i8* %173, i8** %177, align 8
  %178 = load i32*, i32** @RSb, align 8
  %179 = load i32, i32* %1, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  store i32 %182, i32* %2, align 4
  %183 = load i32, i32* %2, align 4
  %184 = call i64 @MUL(i32 14, i32 %183)
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* %2, align 4
  %187 = call i64 @MUL(i32 9, i32 %186)
  %188 = trunc i64 %187 to i32
  %189 = shl i32 %188, 8
  %190 = xor i32 %185, %189
  %191 = load i32, i32* %2, align 4
  %192 = call i64 @MUL(i32 13, i32 %191)
  %193 = trunc i64 %192 to i32
  %194 = shl i32 %193, 16
  %195 = xor i32 %190, %194
  %196 = load i32, i32* %2, align 4
  %197 = call i64 @MUL(i32 11, i32 %196)
  %198 = trunc i64 %197 to i32
  %199 = shl i32 %198, 24
  %200 = xor i32 %195, %199
  %201 = load i32*, i32** @RT0, align 8
  %202 = load i32, i32* %1, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 %200, i32* %204, align 4
  %205 = load i32*, i32** @RT0, align 8
  %206 = load i32, i32* %1, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @ROTL8(i32 %209)
  %211 = ptrtoint i8* %210 to i32
  %212 = load i32*, i32** @RT1, align 8
  %213 = load i32, i32* %1, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  store i32 %211, i32* %215, align 4
  %216 = load i32*, i32** @RT1, align 8
  %217 = load i32, i32* %1, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = load i32, i32* %219, align 4
  %221 = call i8* @ROTL8(i32 %220)
  %222 = ptrtoint i8* %221 to i32
  %223 = load i32*, i32** @RT2, align 8
  %224 = load i32, i32* %1, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  store i32 %222, i32* %226, align 4
  %227 = load i32*, i32** @RT2, align 8
  %228 = load i32, i32* %1, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i8* @ROTL8(i32 %231)
  %233 = load i8**, i8*** @RT3, align 8
  %234 = load i32, i32* %1, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8*, i8** %233, i64 %235
  store i8* %232, i8** %236, align 8
  br label %237

237:                                              ; preds = %119
  %238 = load i32, i32* %1, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %1, align 4
  br label %116

240:                                              ; preds = %116
  ret void
}

declare dso_local i32 @XTIME(i32) #1

declare dso_local i8* @ROTL8(i32) #1

declare dso_local i64 @MUL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
