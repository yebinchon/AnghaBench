; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_unary_op.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_resolve.c_resolve_unary_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { i64, i64 } @resolve_unary_op(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca i32, align 4
  %7 = bitcast %struct.TYPE_6__* %5 to { i64, i64 }*
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %1, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %2, i64* %9, align 8
  store i32 %0, i32* %6, align 4
  %10 = call i32 @promote_operand(%struct.TYPE_6__* %5)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @eval_unary_op(i32 %17, i32 %19, i32 %21)
  %23 = call { i64, i64 } @operand_const(i32 %16, i32 %22)
  %24 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 0
  %26 = extractvalue { i64, i64 } %23, 0
  store i64 %26, i64* %25, align 8
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %24, i32 0, i32 1
  %28 = extractvalue { i64, i64 } %23, 1
  store i64 %28, i64* %27, align 8
  br label %32

29:                                               ; preds = %3
  %30 = bitcast %struct.TYPE_6__* %4 to i8*
  %31 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false)
  br label %32

32:                                               ; preds = %29, %14
  %33 = bitcast %struct.TYPE_6__* %4 to { i64, i64 }*
  %34 = load { i64, i64 }, { i64, i64 }* %33, align 8
  ret { i64, i64 } %34
}

declare dso_local i32 @promote_operand(%struct.TYPE_6__*) #1

declare dso_local { i64, i64 } @operand_const(i32, i32) #1

declare dso_local i32 @eval_unary_op(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
