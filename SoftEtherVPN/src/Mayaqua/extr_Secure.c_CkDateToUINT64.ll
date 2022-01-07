; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_CkDateToUINT64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Secure.c_CkDateToUINT64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CK_DATE = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CkDateToUINT64(%struct.CK_DATE* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CK_DATE*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca [32 x i8], align 16
  %7 = alloca [32 x i8], align 16
  store %struct.CK_DATE* %0, %struct.CK_DATE** %3, align 8
  %8 = load %struct.CK_DATE*, %struct.CK_DATE** %3, align 8
  %9 = icmp eq %struct.CK_DATE* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %43

11:                                               ; preds = %1
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %13 = call i32 @Zero(i8* %12, i32 32)
  %14 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %15 = call i32 @Zero(i8* %14, i32 32)
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %17 = call i32 @Zero(i8* %16, i32 32)
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %19 = load %struct.CK_DATE*, %struct.CK_DATE** %3, align 8
  %20 = getelementptr inbounds %struct.CK_DATE, %struct.CK_DATE* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @Copy(i8* %18, i32 %21, i32 4)
  %23 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %24 = load %struct.CK_DATE*, %struct.CK_DATE** %3, align 8
  %25 = getelementptr inbounds %struct.CK_DATE, %struct.CK_DATE* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @Copy(i8* %23, i32 %26, i32 2)
  %28 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %29 = load %struct.CK_DATE*, %struct.CK_DATE** %3, align 8
  %30 = getelementptr inbounds %struct.CK_DATE, %struct.CK_DATE* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @Copy(i8* %28, i32 %31, i32 2)
  %33 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %34 = call i8* @ToInt(i8* %33)
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = getelementptr inbounds [32 x i8], [32 x i8]* %6, i64 0, i64 0
  %37 = call i8* @ToInt(i8* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %40 = call i8* @ToInt(i8* %39)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store i8* %40, i8** %41, align 8
  %42 = call i32 @SystemToUINT64(%struct.TYPE_3__* %4)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %11, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @Zero(i8*, i32) #1

declare dso_local i32 @Copy(i8*, i32, i32) #1

declare dso_local i8* @ToInt(i8*) #1

declare dso_local i32 @SystemToUINT64(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
