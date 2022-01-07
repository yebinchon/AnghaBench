; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scale3x.c_scale3x_8_def_border.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mednafen/mednafen-1.21/src/drivers/extr_scale3x.c_scale3x_8_def_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*, i64*, i32)* @scale3x_8_def_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale3x_8_def_border(i64* noalias %0, i64* noalias %1, i64* noalias %2, i64* noalias %3, i32 %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp uge i32 %11, 2
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i64*, i64** %8, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64*, i64** %6, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  store i64 %17, i64* %19, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64*, i64** %6, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  store i64 %22, i64* %24, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64*, i64** %7, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %5
  %33 = load i64*, i64** %9, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64 %43, i64* %45, align 8
  br label %52

46:                                               ; preds = %32, %5
  %47 = load i64*, i64** %8, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64*, i64** %6, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 2
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %46, %40
  %53 = load i64*, i64** %7, align 8
  %54 = getelementptr inbounds i64, i64* %53, i32 1
  store i64* %54, i64** %7, align 8
  %55 = load i64*, i64** %8, align 8
  %56 = getelementptr inbounds i64, i64* %55, i32 1
  store i64* %56, i64** %8, align 8
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i32 1
  store i64* %58, i64** %9, align 8
  %59 = load i64*, i64** %6, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 3
  store i64* %60, i64** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sub i32 %61, 2
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %180, %52
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %191

66:                                               ; preds = %63
  %67 = load i64*, i64** %7, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %69, %72
  br i1 %73, label %74, label %164

74:                                               ; preds = %66
  %75 = load i64*, i64** %8, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 -1
  %77 = load i64, i64* %76, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %77, %80
  br i1 %81, label %82, label %164

82:                                               ; preds = %74
  %83 = load i64*, i64** %8, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 -1
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %82
  %91 = load i64*, i64** %8, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 -1
  %93 = load i64, i64* %92, align 8
  br label %98

94:                                               ; preds = %82
  %95 = load i64*, i64** %8, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i64 [ %93, %90 ], [ %97, %94 ]
  %100 = load i64*, i64** %6, align 8
  %101 = getelementptr inbounds i64, i64* %100, i64 0
  store i64 %99, i64* %101, align 8
  %102 = load i64*, i64** %8, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 -1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %7, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %117

109:                                              ; preds = %98
  %110 = load i64*, i64** %8, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64*, i64** %7, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %112, %115
  br i1 %116, label %133, label %117

117:                                              ; preds = %109, %98
  %118 = load i64*, i64** %8, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 1
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %7, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %117
  %126 = load i64*, i64** %8, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %7, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 -1
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %125, %109
  %134 = load i64*, i64** %7, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 0
  %136 = load i64, i64* %135, align 8
  br label %141

137:                                              ; preds = %125, %117
  %138 = load i64*, i64** %8, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi i64 [ %136, %133 ], [ %140, %137 ]
  %143 = load i64*, i64** %6, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 1
  store i64 %142, i64* %144, align 8
  %145 = load i64*, i64** %8, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 1
  %147 = load i64, i64* %146, align 8
  %148 = load i64*, i64** %7, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 0
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %147, %150
  br i1 %151, label %152, label %156

152:                                              ; preds = %141
  %153 = load i64*, i64** %8, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 1
  %155 = load i64, i64* %154, align 8
  br label %160

156:                                              ; preds = %141
  %157 = load i64*, i64** %8, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  br label %160

160:                                              ; preds = %156, %152
  %161 = phi i64 [ %155, %152 ], [ %159, %156 ]
  %162 = load i64*, i64** %6, align 8
  %163 = getelementptr inbounds i64, i64* %162, i64 2
  store i64 %161, i64* %163, align 8
  br label %180

164:                                              ; preds = %74, %66
  %165 = load i64*, i64** %8, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %6, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 0
  store i64 %167, i64* %169, align 8
  %170 = load i64*, i64** %8, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 0
  %172 = load i64, i64* %171, align 8
  %173 = load i64*, i64** %6, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 1
  store i64 %172, i64* %174, align 8
  %175 = load i64*, i64** %8, align 8
  %176 = getelementptr inbounds i64, i64* %175, i64 0
  %177 = load i64, i64* %176, align 8
  %178 = load i64*, i64** %6, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 2
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %164, %160
  %181 = load i64*, i64** %7, align 8
  %182 = getelementptr inbounds i64, i64* %181, i32 1
  store i64* %182, i64** %7, align 8
  %183 = load i64*, i64** %8, align 8
  %184 = getelementptr inbounds i64, i64* %183, i32 1
  store i64* %184, i64** %8, align 8
  %185 = load i64*, i64** %9, align 8
  %186 = getelementptr inbounds i64, i64* %185, i32 1
  store i64* %186, i64** %9, align 8
  %187 = load i64*, i64** %6, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 3
  store i64* %188, i64** %6, align 8
  %189 = load i32, i32* %10, align 4
  %190 = add i32 %189, -1
  store i32 %190, i32* %10, align 4
  br label %63

191:                                              ; preds = %63
  %192 = load i64*, i64** %8, align 8
  %193 = getelementptr inbounds i64, i64* %192, i64 -1
  %194 = load i64, i64* %193, align 8
  %195 = load i64*, i64** %7, align 8
  %196 = getelementptr inbounds i64, i64* %195, i64 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %194, %197
  br i1 %198, label %199, label %213

199:                                              ; preds = %191
  %200 = load i64*, i64** %9, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64*, i64** %7, align 8
  %204 = getelementptr inbounds i64, i64* %203, i64 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %202, %205
  br i1 %206, label %207, label %213

207:                                              ; preds = %199
  %208 = load i64*, i64** %7, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %6, align 8
  %212 = getelementptr inbounds i64, i64* %211, i64 0
  store i64 %210, i64* %212, align 8
  br label %219

213:                                              ; preds = %199, %191
  %214 = load i64*, i64** %8, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64*, i64** %6, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 0
  store i64 %216, i64* %218, align 8
  br label %219

219:                                              ; preds = %213, %207
  %220 = load i64*, i64** %8, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 0
  %222 = load i64, i64* %221, align 8
  %223 = load i64*, i64** %6, align 8
  %224 = getelementptr inbounds i64, i64* %223, i64 1
  store i64 %222, i64* %224, align 8
  %225 = load i64*, i64** %8, align 8
  %226 = getelementptr inbounds i64, i64* %225, i64 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %6, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 2
  store i64 %227, i64* %229, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
