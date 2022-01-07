; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_sync_pos.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_gen.c_gen_sync_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64 }

@flag_nolinesync = common dso_local global i64 0, align 8
@gen_pos = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [9 x i8] c"#line %d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gen_sync_pos(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = bitcast %struct.TYPE_4__* %3 to { i64, i64 }*
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  store i64 %1, i64* %6, align 8
  %7 = load i64, i64* @flag_nolinesync, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %35

10:                                               ; preds = %2
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gen_pos, i32 0, i32 0), align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %11, %13
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gen_pos, i32 0, i32 1), align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %15, %10
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @genlnf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gen_pos, i32 0, i32 1), align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = call i32 @genf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gen_str(i64 %31, i32 0)
  br label %33

33:                                               ; preds = %28, %20
  %34 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.TYPE_4__* @gen_pos to i8*), i8* align 8 %34, i64 16, i1 false)
  br label %35

35:                                               ; preds = %9, %33, %15
  ret void
}

declare dso_local i32 @genlnf(i8*, i64) #1

declare dso_local i32 @genf(i8*) #1

declare dso_local i32 @gen_str(i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
