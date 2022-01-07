; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_antic_steal_map.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_cycle_map.c_antic_steal_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BITMAP_C = common dso_local global i32 0, align 4
@CHAR_C = common dso_local global i32 0, align 4
@DMARE_C = common dso_local global i32 0, align 4
@DMARS_C = common dso_local global i32 0, align 4
@END_C = common dso_local global i32 0, align 4
@FONT_C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i8*, i32*, i32*)* @antic_steal_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @antic_steal_map(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i8* %6, i8** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %27 = load i32, i32* %12, align 4
  %28 = add nsw i32 13, %27
  store i32 %28, i32* %19, align 4
  %29 = load i32, i32* %12, align 4
  %30 = add nsw i32 15, %29
  store i32 %30, i32* %20, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 16, %31
  store i32 %32, i32* %21, align 4
  store i32 48, i32* %26, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %42

35:                                               ; preds = %9
  %36 = load i32, i32* %19, align 4
  %37 = add nsw i32 %36, 8
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %20, align 4
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %21, align 4
  %41 = add nsw i32 %40, 8
  store i32 %41, i32* %21, align 4
  store i32 40, i32* %26, align 4
  br label %53

42:                                               ; preds = %9
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load i32, i32* %19, align 4
  %47 = add nsw i32 %46, 16
  store i32 %47, i32* %19, align 4
  %48 = load i32, i32* %20, align 4
  %49 = add nsw i32 %48, 16
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = add nsw i32 %50, 16
  store i32 %51, i32* %21, align 4
  store i32 32, i32* %26, align 4
  br label %52

52:                                               ; preds = %45, %42
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i32, i32* %11, align 4
  %55 = shl i32 2, %54
  store i32 %55, i32* %24, align 4
  %56 = load i32, i32* %26, align 4
  %57 = load i32, i32* %11, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %26, align 4
  store i32 0, i32* %22, align 4
  br label %59

59:                                               ; preds = %67, %53
  %60 = load i32, i32* %22, align 4
  %61 = icmp sle i32 %60, 113
  br i1 %61, label %62, label %70

62:                                               ; preds = %59
  %63 = load i8*, i8** %16, align 8
  %64 = load i32, i32* %22, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  store i8 46, i8* %66, align 1
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %22, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %22, align 4
  br label %59

70:                                               ; preds = %59
  %71 = load i8*, i8** %16, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 114
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %16, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 0
  store i8 77, i8* %74, align 1
  %75 = load i8*, i8** %16, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 7
  store i8 68, i8* %76, align 1
  %77 = load i8*, i8** %16, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 6
  store i8 68, i8* %78, align 1
  %79 = load i8*, i8** %16, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 1
  store i8 68, i8* %80, align 1
  %81 = load i8*, i8** %16, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 5
  store i8 80, i8* %82, align 1
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 4
  store i8 80, i8* %84, align 1
  %85 = load i8*, i8** %16, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 3
  store i8 80, i8* %86, align 1
  %87 = load i8*, i8** %16, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 2
  store i8 80, i8* %88, align 1
  store i32 0, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %89

89:                                               ; preds = %197, %70
  %90 = load i32, i32* %22, align 4
  %91 = icmp sle i32 %90, 114
  br i1 %91, label %92, label %200

92:                                               ; preds = %89
  store i32 0, i32* %25, align 4
  %93 = load i32, i32* %22, align 4
  %94 = icmp sle i32 %93, 108
  br i1 %94, label %95, label %177

95:                                               ; preds = %92
  %96 = load i32, i32* %13, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %118

98:                                               ; preds = %95
  %99 = load i32, i32* %22, align 4
  %100 = load i32, i32* %19, align 4
  %101 = icmp sge i32 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %98
  %103 = load i32, i32* %22, align 4
  %104 = load i32, i32* %19, align 4
  %105 = sub nsw i32 %103, %104
  %106 = load i32, i32* %24, align 4
  %107 = srem i32 %105, %106
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %102
  %110 = load i32, i32* %22, align 4
  %111 = load i32, i32* %19, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* %24, align 4
  %115 = mul nsw i32 %113, %114
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %109
  store i32 73, i32* %25, align 4
  br label %118

118:                                              ; preds = %117, %109, %102, %98, %95
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %118
  %122 = load i32, i32* %22, align 4
  %123 = load i32, i32* %21, align 4
  %124 = icmp sge i32 %122, %123
  br i1 %124, label %125, label %141

125:                                              ; preds = %121
  %126 = load i32, i32* %22, align 4
  %127 = load i32, i32* %21, align 4
  %128 = sub nsw i32 %126, %127
  %129 = load i32, i32* %24, align 4
  %130 = srem i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %125
  %133 = load i32, i32* %22, align 4
  %134 = load i32, i32* %21, align 4
  %135 = sub nsw i32 %133, %134
  %136 = load i32, i32* %26, align 4
  %137 = load i32, i32* %24, align 4
  %138 = mul nsw i32 %136, %137
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %132
  store i32 70, i32* %25, align 4
  br label %141

141:                                              ; preds = %140, %132, %125, %121, %118
  %142 = load i32, i32* %15, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %164

144:                                              ; preds = %141
  %145 = load i32, i32* %22, align 4
  %146 = load i32, i32* %20, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load i32, i32* %22, align 4
  %150 = load i32, i32* %20, align 4
  %151 = sub nsw i32 %149, %150
  %152 = load i32, i32* %24, align 4
  %153 = srem i32 %151, %152
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %164

155:                                              ; preds = %148
  %156 = load i32, i32* %22, align 4
  %157 = load i32, i32* %20, align 4
  %158 = sub nsw i32 %156, %157
  %159 = load i32, i32* %26, align 4
  %160 = load i32, i32* %24, align 4
  %161 = mul nsw i32 %159, %160
  %162 = icmp slt i32 %158, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %155
  store i32 83, i32* %25, align 4
  br label %164

164:                                              ; preds = %163, %155, %148, %144, %141
  %165 = load i32, i32* %22, align 4
  %166 = icmp sge i32 %165, 28
  br i1 %166, label %167, label %176

167:                                              ; preds = %164
  %168 = load i32, i32* %22, align 4
  %169 = icmp sle i32 %168, 60
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i32, i32* %22, align 4
  %172 = sub nsw i32 %171, 28
  %173 = srem i32 %172, 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %170
  store i32 1, i32* %23, align 4
  br label %176

176:                                              ; preds = %175, %170, %167, %164
  br label %177

177:                                              ; preds = %176, %92
  %178 = load i32, i32* %25, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32, i32* %25, align 4
  %182 = trunc i32 %181 to i8
  %183 = load i8*, i8** %16, align 8
  %184 = load i32, i32* %22, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  store i8 %182, i8* %186, align 1
  br label %196

187:                                              ; preds = %177
  %188 = load i32, i32* %23, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = load i8*, i8** %16, align 8
  %192 = load i32, i32* %22, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  store i8 82, i8* %194, align 1
  store i32 0, i32* %23, align 4
  br label %195

195:                                              ; preds = %190, %187
  br label %196

196:                                              ; preds = %195, %180
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %22, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %22, align 4
  br label %89

200:                                              ; preds = %89
  %201 = load i8*, i8** %16, align 8
  %202 = load i32*, i32** %17, align 8
  %203 = load i32*, i32** %18, align 8
  %204 = call i32 @cpu_cycle_map(i8* %201, i32* %202, i32* %203)
  ret void
}

declare dso_local i32 @cpu_cycle_map(i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
