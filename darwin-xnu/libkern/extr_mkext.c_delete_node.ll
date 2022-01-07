; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libkern/extr_mkext.c_delete_node.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libkern/extr_mkext.c_delete_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encode_state = type { i32*, i32*, i32* }

@NIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encode_state*, i32)* @delete_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @delete_node(%struct.encode_state* %0, i32 %1) #0 {
  %3 = alloca %struct.encode_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.encode_state* %0, %struct.encode_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %7 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @NIL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %246

16:                                               ; preds = %2
  %17 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %18 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NIL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %28 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %181

34:                                               ; preds = %16
  %35 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %36 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @NIL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %46 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %5, align 4
  br label %180

52:                                               ; preds = %34
  %53 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %54 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %5, align 4
  %60 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %61 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NIL, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %153

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %78, %69
  %71 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %72 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %70
  %79 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %80 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NIL, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %70, label %88

88:                                               ; preds = %78
  %89 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %90 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %89, i32 0, i32 2
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %97 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %100 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %98, i64 %106
  store i32 %95, i32* %107, align 4
  %108 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %109 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %116 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %119 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %117, i64 %125
  store i32 %114, i32* %126, align 4
  %127 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %128 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %127, i32 0, i32 2
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %135 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %134, i32 0, i32 2
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  %140 = load i32, i32* %5, align 4
  %141 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %142 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %145 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %4, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %143, i64 %151
  store i32 %140, i32* %152, align 4
  br label %153

153:                                              ; preds = %88, %52
  %154 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %155 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %4, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %162 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  store i32 %160, i32* %166, align 4
  %167 = load i32, i32* %5, align 4
  %168 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %169 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %172 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %4, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %170, i64 %178
  store i32 %167, i32* %179, align 4
  br label %180

180:                                              ; preds = %153, %44
  br label %181

181:                                              ; preds = %180, %26
  %182 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %183 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %190 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %189, i32 0, i32 0
  %191 = load i32*, i32** %190, align 8
  %192 = load i32, i32* %5, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %191, i64 %193
  store i32 %188, i32* %194, align 4
  %195 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %196 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %199 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %4, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %197, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %4, align 4
  %209 = icmp eq i32 %207, %208
  br i1 %209, label %210, label %224

210:                                              ; preds = %181
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %213 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %216 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* %4, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %214, i64 %222
  store i32 %211, i32* %223, align 4
  br label %238

224:                                              ; preds = %181
  %225 = load i32, i32* %5, align 4
  %226 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %227 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %230 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %4, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %231, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %228, i64 %236
  store i32 %225, i32* %237, align 4
  br label %238

238:                                              ; preds = %224, %210
  %239 = load i32, i32* @NIL, align 4
  %240 = load %struct.encode_state*, %struct.encode_state** %3, align 8
  %241 = getelementptr inbounds %struct.encode_state, %struct.encode_state* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  store i32 %239, i32* %245, align 4
  br label %246

246:                                              ; preds = %238, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
