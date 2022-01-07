; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_CorrectedTextRect.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/ui/extr_ui_shared.c_Item_CorrectedTextRect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }

@Item_CorrectedTextRect.rect = internal global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (%struct.TYPE_7__*)* @Item_CorrectedTextRect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @Item_CorrectedTextRect(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = call i32 @memset(%struct.TYPE_6__* @Item_CorrectedTextRect.rect, i32 0, i32 24)
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = icmp ne %struct.TYPE_7__* %4, null
  br i1 %5, label %6, label %19

6:                                                ; preds = %1
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  %9 = bitcast %struct.TYPE_6__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_6__* @Item_CorrectedTextRect.rect to i8*), i8* align 8 %9, i64 24, i1 false)
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Item_CorrectedTextRect.rect, i32 0, i32 2), align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Item_CorrectedTextRect.rect, i32 0, i32 0), align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Item_CorrectedTextRect.rect, i32 0, i32 1), align 8
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @Item_CorrectedTextRect.rect, i32 0, i32 1), align 8
  br label %18

18:                                               ; preds = %12, %6
  br label %19

19:                                               ; preds = %18, %1
  ret %struct.TYPE_6__* @Item_CorrectedTextRect.rect
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
