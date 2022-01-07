; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvAll.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_RecvAll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@SOCK_LATER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RecvAll(%struct.TYPE_4__* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %14 = icmp eq %struct.TYPE_4__* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %4
  store i32 0, i32* %5, align 4
  br label %59

19:                                               ; preds = %15
  %20 = load i64, i64* %8, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %59

23:                                               ; preds = %19
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %59

29:                                               ; preds = %23
  store i64 0, i64* %10, align 8
  br label %30

30:                                               ; preds = %29, %58
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = sub nsw i64 %31, %32
  store i64 %33, i64* %11, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = bitcast i8* %35 to i32*
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i64 @Recv(%struct.TYPE_4__* %34, i32* %38, i64 %39, i32 %40)
  store i64 %41, i64* %12, align 8
  %42 = load i64, i64* %12, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 0, i32* %5, align 4
  br label %59

45:                                               ; preds = %30
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* @SOCK_LATER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %59

50:                                               ; preds = %45
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp sge i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %50
  store i32 1, i32* %5, align 4
  br label %59

58:                                               ; preds = %50
  br label %30

59:                                               ; preds = %57, %49, %44, %28, %22, %18
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i64 @Recv(%struct.TYPE_4__*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
