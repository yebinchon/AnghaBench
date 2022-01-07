; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_loop_reg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_loop_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@slen = common dso_local global i32 0, align 4
@itype = common dso_local global i64* null, align 8
@UJUMP = common dso_local global i64 0, align 8
@RJUMP = common dso_local global i64 0, align 8
@CJUMP = common dso_local global i64 0, align 8
@SJUMP = common dso_local global i64 0, align 8
@unneeded_reg = common dso_local global i32* null, align 8
@ba = common dso_local global i64* null, align 8
@start = common dso_local global i64 0, align 8
@regs = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @loop_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %50, %3
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 9
  br i1 %14, label %15, label %53

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @slen, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @slen, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 %22, %23
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %8, align 4
  br label %53

26:                                               ; preds = %15
  %27 = load i64*, i64** @itype, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @UJUMP, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = load i64*, i64** @itype, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %37, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RJUMP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %36, %26
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %53

49:                                               ; preds = %36
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %12

53:                                               ; preds = %46, %21, %12
  store i32 0, i32* %9, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %53
  %57 = load i64*, i64** @itype, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sub nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %57, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @UJUMP, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %83, label %65

65:                                               ; preds = %56
  %66 = load i64*, i64** @itype, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %66, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @CJUMP, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %83, label %74

74:                                               ; preds = %65
  %75 = load i64*, i64** @itype, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SJUMP, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %74, %65, %56
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, -1
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %83, %74
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %195, %87
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %198

92:                                               ; preds = %88
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 64
  br i1 %94, label %95, label %109

95:                                               ; preds = %92
  %96 = load i32*, i32** @unneeded_reg, align 8
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = ashr i32 %102, %103
  %105 = and i32 %104, 1
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* %7, align 4
  store i32 %108, i32* %4, align 4
  br label %200

109:                                              ; preds = %95, %92
  %110 = load i32, i32* %5, align 4
  %111 = load i32, i32* %9, align 4
  %112 = add nsw i32 %110, %111
  %113 = icmp sge i32 %112, 0
  br i1 %113, label %114, label %194

114:                                              ; preds = %109
  %115 = load i64*, i64** @itype, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %9, align 4
  %118 = add nsw i32 %116, %117
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i64, i64* %115, i64 %119
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @UJUMP, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %144, label %124

124:                                              ; preds = %114
  %125 = load i64*, i64** @itype, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* %9, align 4
  %128 = add nsw i32 %126, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %125, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @CJUMP, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %144, label %134

134:                                              ; preds = %124
  %135 = load i64*, i64** @itype, align 8
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i64, i64* %135, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @SJUMP, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %194

144:                                              ; preds = %134, %124, %114
  %145 = load i64*, i64** @ba, align 8
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %9, align 4
  %148 = add nsw i32 %146, %147
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i64, i64* %145, i64 %149
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @start, align 8
  %153 = icmp sge i64 %151, %152
  br i1 %153, label %154, label %193

154:                                              ; preds = %144
  %155 = load i64*, i64** @ba, align 8
  %156 = load i32, i32* %5, align 4
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %155, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @start, align 8
  %163 = load i32, i32* %5, align 4
  %164 = mul nsw i32 %163, 2
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %162, %165
  %167 = icmp slt i64 %161, %166
  br i1 %167, label %168, label %193

168:                                              ; preds = %154
  %169 = load i64*, i64** @ba, align 8
  %170 = load i32, i32* %5, align 4
  %171 = load i32, i32* %9, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i64, i64* %169, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @start, align 8
  %177 = sub nsw i64 %175, %176
  %178 = ashr i64 %177, 1
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %10, align 4
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** @regs, align 8
  %181 = load i32, i32* %10, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @get_reg(i32 %185, i32 %186)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %168
  %191 = load i32, i32* %11, align 4
  store i32 %191, i32* %4, align 4
  br label %200

192:                                              ; preds = %168
  br label %193

193:                                              ; preds = %192, %154, %144
  br label %194

194:                                              ; preds = %193, %134, %109
  br label %195

195:                                              ; preds = %194
  %196 = load i32, i32* %9, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %9, align 4
  br label %88

198:                                              ; preds = %88
  %199 = load i32, i32* %7, align 4
  store i32 %199, i32* %4, align 4
  br label %200

200:                                              ; preds = %198, %190, %107
  %201 = load i32, i32* %4, align 4
  ret i32 %201
}

declare dso_local i32 @get_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
