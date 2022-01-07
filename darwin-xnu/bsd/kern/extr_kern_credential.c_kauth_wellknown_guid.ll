; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_wellknown_guid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_credential.c_kauth_wellknown_guid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@kauth_wellknown_guid.fingerprint = internal global [12 x i8] c"\AB\CD\EF\AB\CD\EF\AB\CD\EF\AB\CD\EF", align 1
@KAUTH_WKG_EVERYBODY = common dso_local global i32 0, align 4
@KAUTH_WKG_NOBODY = common dso_local global i32 0, align 4
@KAUTH_WKG_OWNER = common dso_local global i32 0, align 4
@KAUTH_WKG_GROUP = common dso_local global i32 0, align 4
@KAUTH_WKG_NOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kauth_wellknown_guid(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = bitcast %struct.TYPE_3__* %5 to i8*
  %7 = call i64 @bcmp(i8* %6, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @kauth_wellknown_guid.fingerprint, i64 0, i64 0), i32 12)
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @OSSwapHostToBigInt32(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  switch i32 %16, label %25 [
    i32 12, label %17
    i32 -2, label %19
    i32 10, label %21
    i32 16, label %23
  ]

17:                                               ; preds = %9
  %18 = load i32, i32* @KAUTH_WKG_EVERYBODY, align 4
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %9
  %20 = load i32, i32* @KAUTH_WKG_NOBODY, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %9
  %22 = load i32, i32* @KAUTH_WKG_OWNER, align 4
  store i32 %22, i32* %2, align 4
  br label %28

23:                                               ; preds = %9
  %24 = load i32, i32* @KAUTH_WKG_GROUP, align 4
  store i32 %24, i32* %2, align 4
  br label %28

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25, %1
  %27 = load i32, i32* @KAUTH_WKG_NOT, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %23, %21, %19, %17
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @bcmp(i8*, i8*, i32) #1

declare dso_local i32 @OSSwapHostToBigInt32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
