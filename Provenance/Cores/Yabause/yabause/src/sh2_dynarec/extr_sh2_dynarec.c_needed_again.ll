; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_needed_again.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_needed_again.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@itype = common dso_local global i64* null, align 8
@UJUMP = common dso_local global i64 0, align 8
@RJUMP = common dso_local global i64 0, align 8
@ba = common dso_local global i32* null, align 8
@start = common dso_local global i32 0, align 4
@slen = common dso_local global i32 0, align 4
@SYSCALL = common dso_local global i64 0, align 8
@SYSTEM = common dso_local global i64 0, align 8
@rs1 = common dso_local global i32* null, align 8
@rs2 = common dso_local global i32* null, align 8
@unneeded_reg = common dso_local global i32* null, align 8
@CJUMP = common dso_local global i64 0, align 8
@SJUMP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @needed_again(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 -1, i32* %7, align 4
  store i32 10, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %2
  %12 = load i64*, i64** @itype, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %12, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @UJUMP, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %11
  %21 = load i64*, i64** @itype, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RJUMP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %20, %11
  %30 = load i32*, i32** @ba, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @start, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %51, label %38

38:                                               ; preds = %29
  %39 = load i32*, i32** @ba, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @start, align 4
  %46 = load i32, i32* @slen, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %45, %47
  %49 = sub nsw i32 %48, 4
  %50 = icmp sgt i32 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %38, %29
  store i32 0, i32* %3, align 4
  br label %203

52:                                               ; preds = %38
  br label %53

53:                                               ; preds = %52, %20, %2
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %113, %53
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 9
  br i1 %56, label %57, label %116

57:                                               ; preds = %54
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @slen, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load i32, i32* @slen, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %64, %65
  %67 = sub nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %116

68:                                               ; preds = %57
  %69 = load i64*, i64** @itype, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %69, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @UJUMP, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %68
  %79 = load i64*, i64** @itype, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %79, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RJUMP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %78, %68
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %116

91:                                               ; preds = %78
  %92 = load i64*, i64** @itype, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %93, %94
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i64, i64* %92, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SYSCALL, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %111, label %101

101:                                              ; preds = %91
  %102 = load i64*, i64** @itype, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %103, %104
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %102, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @SYSTEM, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101, %91
  br label %116

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %6, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %6, align 4
  br label %54

116:                                              ; preds = %111, %88, %63, %54
  br label %117

117:                                              ; preds = %195, %116
  %118 = load i32, i32* %6, align 4
  %119 = icmp sge i32 %118, 1
  br i1 %119, label %120, label %198

120:                                              ; preds = %117
  %121 = load i32*, i32** @rs1, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %122, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %121, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %8, align 4
  br label %132

132:                                              ; preds = %130, %120
  %133 = load i32*, i32** @rs2, align 8
  %134 = load i32, i32* %5, align 4
  %135 = load i32, i32* %6, align 4
  %136 = add nsw i32 %134, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %133, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %142, %132
  %145 = load i32*, i32** @unneeded_reg, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %4, align 4
  %153 = ashr i32 %151, %152
  %154 = and i32 %153, 1
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  store i32 10, i32* %8, align 4
  br label %157

157:                                              ; preds = %156, %144
  %158 = load i32, i32* %5, align 4
  %159 = load i32, i32* %6, align 4
  %160 = add nsw i32 %158, %159
  %161 = icmp sge i32 %160, 0
  br i1 %161, label %162, label %194

162:                                              ; preds = %157
  %163 = load i64*, i64** @itype, align 8
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* %6, align 4
  %166 = add nsw i32 %164, %165
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i64, i64* %163, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @UJUMP, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %192, label %172

172:                                              ; preds = %162
  %173 = load i64*, i64** @itype, align 8
  %174 = load i32, i32* %5, align 4
  %175 = load i32, i32* %6, align 4
  %176 = add nsw i32 %174, %175
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64, i64* %173, i64 %177
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @CJUMP, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %192, label %182

182:                                              ; preds = %172
  %183 = load i64*, i64** @itype, align 8
  %184 = load i32, i32* %5, align 4
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %184, %185
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %183, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SJUMP, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %182, %172, %162
  %193 = load i32, i32* %6, align 4
  store i32 %193, i32* %7, align 4
  br label %194

194:                                              ; preds = %192, %182, %157
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %6, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %6, align 4
  br label %117

198:                                              ; preds = %117
  %199 = load i32, i32* %8, align 4
  %200 = icmp slt i32 %199, 10
  br i1 %200, label %201, label %202

201:                                              ; preds = %198
  store i32 1, i32* %3, align 4
  br label %203

202:                                              ; preds = %198
  store i32 0, i32* %3, align 4
  br label %203

203:                                              ; preds = %202, %201, %51
  %204 = load i32, i32* %3, align 4
  ret i32 %204
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
