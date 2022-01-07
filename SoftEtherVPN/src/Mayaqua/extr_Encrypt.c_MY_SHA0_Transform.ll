; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_MY_SHA0_Transform.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_MY_SHA0_Transform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @MY_SHA0_Transform to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MY_SHA0_Transform(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [80 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %45, %1
  %17 = load i32, i32* %10, align 4
  %18 = icmp slt i32 %17, 16
  br i1 %18, label %19, label %48

19:                                               ; preds = %16
  %20 = load i32*, i32** %9, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %9, align 8
  %22 = load i32, i32* %20, align 4
  %23 = shl i32 %22, 24
  store i32 %23, i32* %11, align 4
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %9, align 8
  %26 = load i32, i32* %24, align 4
  %27 = shl i32 %26, 16
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  %32 = load i32, i32* %30, align 4
  %33 = shl i32 %32, 8
  %34 = load i32, i32* %11, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %9, align 8
  %38 = load i32, i32* %36, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %43
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %19
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %10, align 4
  br label %16

48:                                               ; preds = %16
  br label %49

49:                                               ; preds = %79, %48
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 80
  br i1 %51, label %52, label %82

52:                                               ; preds = %49
  %53 = load i32, i32* %10, align 4
  %54 = sub nsw i32 %53, 3
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %10, align 4
  %59 = sub nsw i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = xor i32 %57, %62
  %64 = load i32, i32* %10, align 4
  %65 = sub nsw i32 %64, 14
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = xor i32 %63, %68
  %70 = load i32, i32* %10, align 4
  %71 = sub nsw i32 %70, 16
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = xor i32 %69, %74
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %77
  store i32 %75, i32* %78, align 4
  br label %79

79:                                               ; preds = %52
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %49

82:                                               ; preds = %49
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %4, align 4
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %5, align 4
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 2
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %7, align 4
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 4
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %180, %82
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 80
  br i1 %110, label %111, label %183

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @rol(i32 5, i32 %112)
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [80 x i32], [80 x i32]* %3, i64 0, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %115, %119
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %121, 20
  br i1 %122, label %123, label %134

123:                                              ; preds = %111
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* %6, align 4
  %127 = load i32, i32* %7, align 4
  %128 = xor i32 %126, %127
  %129 = and i32 %125, %128
  %130 = xor i32 %124, %129
  %131 = add nsw i32 %130, 1518500249
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %12, align 4
  br label %173

134:                                              ; preds = %111
  %135 = load i32, i32* %10, align 4
  %136 = icmp slt i32 %135, 40
  br i1 %136, label %137, label %146

137:                                              ; preds = %134
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* %6, align 4
  %140 = xor i32 %138, %139
  %141 = load i32, i32* %7, align 4
  %142 = xor i32 %140, %141
  %143 = add nsw i32 %142, 1859775393
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %12, align 4
  br label %172

146:                                              ; preds = %134
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 60
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* %6, align 4
  %152 = and i32 %150, %151
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %154, %155
  %157 = and i32 %153, %156
  %158 = or i32 %152, %157
  %159 = add i32 %158, -1894007588
  %160 = load i32, i32* %12, align 4
  %161 = add i32 %160, %159
  store i32 %161, i32* %12, align 4
  br label %171

162:                                              ; preds = %146
  %163 = load i32, i32* %5, align 4
  %164 = load i32, i32* %6, align 4
  %165 = xor i32 %163, %164
  %166 = load i32, i32* %7, align 4
  %167 = xor i32 %165, %166
  %168 = add i32 %167, -899497514
  %169 = load i32, i32* %12, align 4
  %170 = add i32 %169, %168
  store i32 %170, i32* %12, align 4
  br label %171

171:                                              ; preds = %162, %149
  br label %172

172:                                              ; preds = %171, %137
  br label %173

173:                                              ; preds = %172, %123
  %174 = load i32, i32* %7, align 4
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* %6, align 4
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %5, align 4
  %177 = call i32 @rol(i32 30, i32 %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %5, align 4
  %179 = load i32, i32* %12, align 4
  store i32 %179, i32* %4, align 4
  br label %180

180:                                              ; preds = %173
  %181 = load i32, i32* %10, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %10, align 4
  br label %108

183:                                              ; preds = %108
  %184 = load i32, i32* %4, align 4
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 0
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %184
  store i32 %190, i32* %188, align 4
  %191 = load i32, i32* %5, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, %191
  store i32 %197, i32* %195, align 4
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %198
  store i32 %204, i32* %202, align 4
  %205 = load i32, i32* %7, align 4
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 0
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = add nsw i32 %210, %205
  store i32 %211, i32* %209, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 4
  %217 = load i32, i32* %216, align 4
  %218 = add nsw i32 %217, %212
  store i32 %218, i32* %216, align 4
  ret void
}

declare dso_local i32 @rol(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
