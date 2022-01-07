; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_blst_meta_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_blist.c_blst_meta_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64 }

@BLIST_META_RADIX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"blst_meta_free: freeing already free blocks (%d) %d/%d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"blst_meta_free: freeing unexpected range\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32, i32, i32)* @blst_meta_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blst_meta_free(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @BLIST_META_RADIX_SHIFT, align 4
  %18 = ashr i32 %16, %17
  store i32 %18, i32* %14, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %79

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %24
  store i32 1, i32* %13, align 4
  br label %37

37:                                               ; preds = %73, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %77

41:                                               ; preds = %37
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %77

50:                                               ; preds = %41
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 1
  br i1 %57, label %58, label %65

58:                                               ; preds = %50
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  store i64 0, i64* %64, align 8
  br label %72

65:                                               ; preds = %50
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %65, %58
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %37

77:                                               ; preds = %49, %37
  br label %78

78:                                               ; preds = %77, %24
  br label %87

79:                                               ; preds = %6
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %85, %81
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %79, %78
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = icmp eq i64 %91, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %87
  br label %215

96:                                               ; preds = %87
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp sgt i64 %100, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %105, i64 %109, i32 %110)
  br label %112

112:                                              ; preds = %104, %96
  %113 = load i32, i32* @BLIST_META_RADIX_SHIFT, align 4
  %114 = load i32, i32* %10, align 4
  %115 = ashr i32 %114, %113
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 %116, %117
  %119 = load i32, i32* %10, align 4
  %120 = sdiv i32 %118, %119
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %10, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %12, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %13, align 4
  br label %130

130:                                              ; preds = %202, %112
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %11, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %140

134:                                              ; preds = %130
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %136, %137
  %139 = icmp slt i32 %135, %138
  br label %140

140:                                              ; preds = %134, %130
  %141 = phi i1 [ false, %130 ], [ %139, %134 ]
  br i1 %141, label %142, label %215

142:                                              ; preds = %140
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %143, %144
  %146 = load i32, i32* %8, align 4
  %147 = sub nsw i32 %145, %146
  store i32 %147, i32* %15, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp sgt i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %142
  %152 = load i32, i32* %9, align 4
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %151, %142
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %153
  %161 = load i32, i32* %14, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %171

163:                                              ; preds = %160
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = load i32, i32* %13, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %15, align 4
  %170 = call i32 @blst_leaf_free(%struct.TYPE_6__* %167, i32 %168, i32 %169)
  br label %182

171:                                              ; preds = %160
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i64 %174
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i32, i32* %10, align 4
  %179 = load i32, i32* %14, align 4
  %180 = sub nsw i32 %179, 1
  %181 = load i32, i32* %12, align 4
  call void @blst_meta_free(%struct.TYPE_6__* %175, i32 %176, i32 %177, i32 %178, i32 %180, i32 %181)
  br label %182

182:                                              ; preds = %171, %163
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %187 = load i32, i32* %13, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %185, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %182
  %194 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %195 = load i32, i32* %13, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %193, %182
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* %9, align 4
  %205 = sub nsw i32 %204, %203
  store i32 %205, i32* %9, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %8, align 4
  %208 = add nsw i32 %207, %206
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %10, align 4
  %210 = load i32, i32* %12, align 4
  %211 = add nsw i32 %210, %209
  store i32 %211, i32* %12, align 4
  %212 = load i32, i32* %14, align 4
  %213 = load i32, i32* %13, align 4
  %214 = add nsw i32 %213, %212
  store i32 %214, i32* %13, align 4
  br label %130

215:                                              ; preds = %95, %140
  ret void
}

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @blst_leaf_free(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
