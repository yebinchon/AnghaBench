; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_struct.c_incdec_struct.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_struct.c_incdec_struct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.incdec = type { i32, i32 }

@__const.incdec_struct.a = private unnamed_addr constant [2 x %struct.incdec] [%struct.incdec { i32 1, i32 2 }, %struct.incdec { i32 3, i32 4 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @incdec_struct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @incdec_struct() #0 {
  %1 = alloca [2 x %struct.incdec], align 16
  %2 = alloca %struct.incdec*, align 8
  %3 = bitcast [2 x %struct.incdec]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([2 x %struct.incdec]* @__const.incdec_struct.a to i8*), i64 16, i1 false)
  %4 = getelementptr inbounds [2 x %struct.incdec], [2 x %struct.incdec]* %1, i64 0, i64 0
  store %struct.incdec* %4, %struct.incdec** %2, align 8
  %5 = load %struct.incdec*, %struct.incdec** %2, align 8
  %6 = getelementptr inbounds %struct.incdec, %struct.incdec* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @expect(i32 1, i32 %7)
  %9 = load %struct.incdec*, %struct.incdec** %2, align 8
  %10 = getelementptr inbounds %struct.incdec, %struct.incdec* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @expect(i32 2, i32 %11)
  %13 = load %struct.incdec*, %struct.incdec** %2, align 8
  %14 = getelementptr inbounds %struct.incdec, %struct.incdec* %13, i32 1
  store %struct.incdec* %14, %struct.incdec** %2, align 8
  %15 = load %struct.incdec*, %struct.incdec** %2, align 8
  %16 = getelementptr inbounds %struct.incdec, %struct.incdec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @expect(i32 3, i32 %17)
  %19 = load %struct.incdec*, %struct.incdec** %2, align 8
  %20 = getelementptr inbounds %struct.incdec, %struct.incdec* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @expect(i32 4, i32 %21)
  %23 = load %struct.incdec*, %struct.incdec** %2, align 8
  %24 = getelementptr inbounds %struct.incdec, %struct.incdec* %23, i32 -1
  store %struct.incdec* %24, %struct.incdec** %2, align 8
  %25 = load %struct.incdec*, %struct.incdec** %2, align 8
  %26 = getelementptr inbounds %struct.incdec, %struct.incdec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @expect(i32 1, i32 %27)
  %29 = load %struct.incdec*, %struct.incdec** %2, align 8
  %30 = getelementptr inbounds %struct.incdec, %struct.incdec* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @expect(i32 2, i32 %31)
  %33 = load %struct.incdec*, %struct.incdec** %2, align 8
  %34 = getelementptr inbounds %struct.incdec, %struct.incdec* %33, i32 1
  store %struct.incdec* %34, %struct.incdec** %2, align 8
  %35 = load %struct.incdec*, %struct.incdec** %2, align 8
  %36 = getelementptr inbounds %struct.incdec, %struct.incdec* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @expect(i32 3, i32 %37)
  %39 = load %struct.incdec*, %struct.incdec** %2, align 8
  %40 = getelementptr inbounds %struct.incdec, %struct.incdec* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @expect(i32 4, i32 %41)
  %43 = load %struct.incdec*, %struct.incdec** %2, align 8
  %44 = getelementptr inbounds %struct.incdec, %struct.incdec* %43, i32 -1
  store %struct.incdec* %44, %struct.incdec** %2, align 8
  %45 = load %struct.incdec*, %struct.incdec** %2, align 8
  %46 = getelementptr inbounds %struct.incdec, %struct.incdec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @expect(i32 1, i32 %47)
  %49 = load %struct.incdec*, %struct.incdec** %2, align 8
  %50 = getelementptr inbounds %struct.incdec, %struct.incdec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @expect(i32 2, i32 %51)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
