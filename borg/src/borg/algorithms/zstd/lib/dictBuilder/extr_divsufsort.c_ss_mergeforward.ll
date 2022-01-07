; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_divsufsort.c_ss_mergeforward.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/dictBuilder/extr_divsufsort.c_ss_mergeforward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32*, i32*, i32*, i32)* @ss_mergeforward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ss_mergeforward(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 %6, i32* %14, align 4
  %21 = load i32*, i32** %13, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = getelementptr inbounds i32, i32* %21, i64 %27
  %29 = getelementptr inbounds i32, i32* %28, i64 -1
  store i32* %29, i32** %18, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32*, i32** %10, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = ptrtoint i32* %32 to i64
  %35 = ptrtoint i32* %33 to i64
  %36 = sub i64 %34, %35
  %37 = sdiv exact i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = call i32 @ss_blockswap(i32* %30, i32* %31, i32 %38)
  %40 = load i32*, i32** %10, align 8
  store i32* %40, i32** %15, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %19, align 4
  %42 = load i32*, i32** %13, align 8
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %11, align 8
  store i32* %43, i32** %17, align 8
  br label %44

44:                                               ; preds = %189, %7
  %45 = load i8*, i8** %8, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32*, i32** %9, align 8
  %52 = load i32*, i32** %17, align 8
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @ss_compare(i8* %45, i32* %50, i32* %55, i32 %56)
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* %20, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %82

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %77, %60
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %15, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32*, i32** %18, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = icmp ule i32* %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* %19, align 4
  %71 = load i32*, i32** %18, align 8
  store i32 %70, i32* %71, align 4
  br label %190

72:                                               ; preds = %61
  %73 = load i32*, i32** %15, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %16, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %16, align 8
  store i32 %74, i32* %75, align 4
  br label %77

77:                                               ; preds = %72
  %78 = load i32*, i32** %16, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %61, label %81

81:                                               ; preds = %77
  br label %189

82:                                               ; preds = %44
  %83 = load i32, i32* %20, align 4
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %124

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %119, %85
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %15, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %15, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %17, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %17, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32*, i32** %17, align 8
  %97 = icmp ule i32* %95, %96
  br i1 %97, label %98, label %118

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %103, %98
  %100 = load i32*, i32** %16, align 8
  %101 = load i32*, i32** %18, align 8
  %102 = icmp ult i32* %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %99
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %15, align 8
  %107 = getelementptr inbounds i32, i32* %106, i32 1
  store i32* %107, i32** %15, align 8
  store i32 %105, i32* %106, align 4
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %108, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %16, align 8
  store i32 %109, i32* %110, align 4
  br label %99

112:                                              ; preds = %99
  %113 = load i32*, i32** %16, align 8
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** %15, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32*, i32** %16, align 8
  store i32 %116, i32* %117, align 4
  br label %190

118:                                              ; preds = %86
  br label %119

119:                                              ; preds = %118
  %120 = load i32*, i32** %17, align 8
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %86, label %123

123:                                              ; preds = %119
  br label %188

124:                                              ; preds = %82
  %125 = load i32*, i32** %17, align 8
  %126 = load i32, i32* %125, align 4
  %127 = xor i32 %126, -1
  %128 = load i32*, i32** %17, align 8
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %145, %124
  %130 = load i32*, i32** %16, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** %15, align 8
  %133 = getelementptr inbounds i32, i32* %132, i32 1
  store i32* %133, i32** %15, align 8
  store i32 %131, i32* %132, align 4
  %134 = load i32*, i32** %18, align 8
  %135 = load i32*, i32** %16, align 8
  %136 = icmp ule i32* %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %19, align 4
  %139 = load i32*, i32** %18, align 8
  store i32 %138, i32* %139, align 4
  br label %190

140:                                              ; preds = %129
  %141 = load i32*, i32** %15, align 8
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %16, align 8
  %144 = getelementptr inbounds i32, i32* %143, i32 1
  store i32* %144, i32** %16, align 8
  store i32 %142, i32* %143, align 4
  br label %145

145:                                              ; preds = %140
  %146 = load i32*, i32** %16, align 8
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %129, label %149

149:                                              ; preds = %145
  br label %150

150:                                              ; preds = %183, %149
  %151 = load i32*, i32** %17, align 8
  %152 = load i32, i32* %151, align 4
  %153 = load i32*, i32** %15, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %15, align 8
  store i32 %152, i32* %153, align 4
  %155 = load i32*, i32** %15, align 8
  %156 = load i32, i32* %155, align 4
  %157 = load i32*, i32** %17, align 8
  %158 = getelementptr inbounds i32, i32* %157, i32 1
  store i32* %158, i32** %17, align 8
  store i32 %156, i32* %157, align 4
  %159 = load i32*, i32** %12, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = icmp ule i32* %159, %160
  br i1 %161, label %162, label %182

162:                                              ; preds = %150
  br label %163

163:                                              ; preds = %167, %162
  %164 = load i32*, i32** %16, align 8
  %165 = load i32*, i32** %18, align 8
  %166 = icmp ult i32* %164, %165
  br i1 %166, label %167, label %176

167:                                              ; preds = %163
  %168 = load i32*, i32** %16, align 8
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %15, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %15, align 8
  store i32 %169, i32* %170, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32*, i32** %16, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %16, align 8
  store i32 %173, i32* %174, align 4
  br label %163

176:                                              ; preds = %163
  %177 = load i32*, i32** %16, align 8
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %15, align 8
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %19, align 4
  %181 = load i32*, i32** %16, align 8
  store i32 %180, i32* %181, align 4
  br label %190

182:                                              ; preds = %150
  br label %183

183:                                              ; preds = %182
  %184 = load i32*, i32** %17, align 8
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %150, label %187

187:                                              ; preds = %183
  br label %188

188:                                              ; preds = %187, %123
  br label %189

189:                                              ; preds = %188, %81
  br label %44

190:                                              ; preds = %176, %137, %112, %69
  ret void
}

declare dso_local i32 @ss_blockswap(i32*, i32*, i32) #1

declare dso_local i32 @ss_compare(i8*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
