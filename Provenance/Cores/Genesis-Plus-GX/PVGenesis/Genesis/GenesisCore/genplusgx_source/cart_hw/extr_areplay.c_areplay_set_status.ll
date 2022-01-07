; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_areplay.c_areplay_set_status.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Genesis-Plus-GX/PVGenesis/Genesis/GenesisCore/genplusgx_source/cart_hw/extr_areplay.c_areplay_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32*, i32*, i32*, i8** }
%struct.TYPE_3__ = type { i32 }

@action_replay = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@TYPE_AR = common dso_local global i64 0, align 8
@cart = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @areplay_set_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 0), align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %224

5:                                                ; preds = %1
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 0), align 8
  %7 = load i64, i64* @TYPE_AR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  %11 = icmp eq i32 %10, 128
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 130, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %9, %5
  %14 = load i32, i32* %2, align 4
  switch i32 %14, label %221 [
    i32 130, label %15
    i32 128, label %15
    i32 129, label %60
  ]

15:                                               ; preds = %13, %13
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 1), align 8
  %17 = icmp eq i32 %16, 129
  br i1 %17, label %18, label %59

18:                                               ; preds = %15
  %19 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %23 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8**
  store i8* %21, i8** %28, align 8
  %29 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %33 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8**
  store i8* %31, i8** %38, align 8
  %39 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 2
  %41 = load i8*, i8** %40, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %43 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8**
  store i8* %41, i8** %48, align 8
  %49 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 3
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %53 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 3
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8**
  store i8* %51, i8** %58, align 8
  br label %59

59:                                               ; preds = %18, %15
  br label %222

60:                                               ; preds = %13
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 1), align 8
  %62 = icmp ne i32 %61, 129
  br i1 %62, label %63, label %220

63:                                               ; preds = %60
  %64 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 10
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 16128
  %91 = shl i32 %90, 8
  %92 = or i32 %86, %91
  %93 = shl i32 %92, 1
  %94 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %93, i32* %95, align 4
  %96 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 5
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 6
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 16128
  %103 = shl i32 %102, 8
  %104 = or i32 %98, %103
  %105 = shl i32 %104, 1
  %106 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 %105, i32* %107, align 4
  %108 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 8
  %110 = load i32, i32* %109, align 4
  %111 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 9
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 16128
  %115 = shl i32 %114, 8
  %116 = or i32 %110, %115
  %117 = shl i32 %116, 1
  %118 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 2
  store i32 %117, i32* %119, align 4
  %120 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 11
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 4), align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 12
  %125 = load i32, i32* %124, align 4
  %126 = and i32 %125, 16128
  %127 = shl i32 %126, 8
  %128 = or i32 %122, %127
  %129 = shl i32 %128, 1
  %130 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 3
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %133 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %132, %135
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8**
  %139 = load i8*, i8** %138, align 8
  %140 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 0
  store i8* %139, i8** %141, align 8
  %142 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %143 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = sext i32 %146 to i64
  %148 = inttoptr i64 %147 to i8**
  %149 = load i8*, i8** %148, align 8
  %150 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %151 = getelementptr inbounds i8*, i8** %150, i64 1
  store i8* %149, i8** %151, align 8
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %153 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8**
  %159 = load i8*, i8** %158, align 8
  %160 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 2
  store i8* %159, i8** %161, align 8
  %162 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %163 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 3
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %162, %165
  %167 = sext i32 %166 to i64
  %168 = inttoptr i64 %167 to i8**
  %169 = load i8*, i8** %168, align 8
  %170 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 5), align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 3
  store i8* %169, i8** %171, align 8
  %172 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 0
  %174 = load i32, i32* %173, align 4
  %175 = sext i32 %174 to i64
  %176 = inttoptr i64 %175 to i8*
  %177 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %178 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %177, %180
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8**
  store i8* %176, i8** %183, align 8
  %184 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 1
  %186 = load i32, i32* %185, align 4
  %187 = sext i32 %186 to i64
  %188 = inttoptr i64 %187 to i8*
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %190 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %189, %192
  %194 = sext i32 %193 to i64
  %195 = inttoptr i64 %194 to i8**
  store i8* %188, i8** %195, align 8
  %196 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = inttoptr i64 %199 to i8*
  %201 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %202 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %201, %204
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8**
  store i8* %200, i8** %207, align 8
  %208 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 3), align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 3
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i8*
  %213 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cart, i32 0, i32 0), align 4
  %214 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 2), align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %213, %216
  %218 = sext i32 %217 to i64
  %219 = inttoptr i64 %218 to i8**
  store i8* %212, i8** %219, align 8
  br label %220

220:                                              ; preds = %63, %60
  br label %222

221:                                              ; preds = %13
  br label %224

222:                                              ; preds = %220, %59
  %223 = load i32, i32* %2, align 4
  store i32 %223, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @action_replay, i32 0, i32 1), align 8
  br label %224

224:                                              ; preds = %221, %222, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
