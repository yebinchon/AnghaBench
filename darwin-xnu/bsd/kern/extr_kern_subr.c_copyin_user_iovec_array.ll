; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_subr.c_copyin_user_iovec_array.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_subr.c_copyin_user_iovec_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.user_iovec = type { i32, i32 }
%struct.user64_iovec = type { i32, i32 }
%struct.user32_iovec = type { i32, i32 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copyin_user_iovec_array(i32 %0, i32 %1, i32 %2, %struct.user_iovec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.user_iovec*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.user64_iovec, align 4
  %14 = alloca %struct.user32_iovec, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.user_iovec* %3, %struct.user_iovec** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @UIO_USERSPACE64, align 4
  %17 = icmp eq i32 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i64 8, i64 8
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.user_iovec*, %struct.user_iovec** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* %10, align 8
  %25 = mul i64 %23, %24
  %26 = trunc i64 %25 to i32
  %27 = call i32 @copyin(i32 %20, %struct.user_iovec* %21, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %91

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %87, %32
  %36 = load i32, i32* %12, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %90

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @UIO_USERSPACE64, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %64

42:                                               ; preds = %38
  %43 = load %struct.user_iovec*, %struct.user_iovec** %9, align 8
  %44 = bitcast %struct.user_iovec* %43 to %struct.user64_iovec*
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.user64_iovec, %struct.user64_iovec* %44, i64 %46
  %48 = bitcast %struct.user64_iovec* %13 to i8*
  %49 = bitcast %struct.user64_iovec* %47 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %48, i8* align 4 %49, i64 8, i1 false)
  %50 = getelementptr inbounds %struct.user64_iovec, %struct.user64_iovec* %13, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.user_iovec*, %struct.user_iovec** %9, align 8
  %53 = load i32, i32* %12, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %52, i64 %54
  %56 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %55, i32 0, i32 1
  store i32 %51, i32* %56, align 4
  %57 = getelementptr inbounds %struct.user64_iovec, %struct.user64_iovec* %13, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.user_iovec*, %struct.user_iovec** %9, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %59, i64 %61
  %63 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %62, i32 0, i32 0
  store i32 %58, i32* %63, align 4
  br label %86

64:                                               ; preds = %38
  %65 = load %struct.user_iovec*, %struct.user_iovec** %9, align 8
  %66 = bitcast %struct.user_iovec* %65 to %struct.user32_iovec*
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.user32_iovec, %struct.user32_iovec* %66, i64 %68
  %70 = bitcast %struct.user32_iovec* %14 to i8*
  %71 = bitcast %struct.user32_iovec* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 8, i1 false)
  %72 = getelementptr inbounds %struct.user32_iovec, %struct.user32_iovec* %14, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.user_iovec*, %struct.user_iovec** %9, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %74, i64 %76
  %78 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = getelementptr inbounds %struct.user32_iovec, %struct.user32_iovec* %14, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.user_iovec*, %struct.user_iovec** %9, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %81, i64 %83
  %85 = getelementptr inbounds %struct.user_iovec, %struct.user_iovec* %84, i32 0, i32 0
  store i32 %80, i32* %85, align 4
  br label %86

86:                                               ; preds = %64, %42
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %12, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %12, align 4
  br label %35

90:                                               ; preds = %35
  store i32 0, i32* %5, align 4
  br label %91

91:                                               ; preds = %90, %30
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i32 @copyin(i32, %struct.user_iovec*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
