; ModuleID = '/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_writetokens.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/ct/extr_ct.c_writetokens.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wjobfd = common dso_local global i64 0, align 8
@F_SETFL = common dso_local global i32 0, align 4
@F_GETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @writetokens to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @writetokens(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  store i8 43, i8* %3, align 1
  %4 = load i64, i64* @wjobfd, align 8
  %5 = icmp sge i64 %4, 0
  br i1 %5, label %6, label %28

6:                                                ; preds = %1
  %7 = load i64, i64* @wjobfd, align 8
  %8 = load i32, i32* @F_SETFL, align 4
  %9 = load i64, i64* @wjobfd, align 8
  %10 = load i32, i32* @F_GETFL, align 4
  %11 = call i32 (i64, i32, ...) @fcntl(i64 %9, i32 %10)
  %12 = load i32, i32* @O_NONBLOCK, align 4
  %13 = or i32 %11, %12
  %14 = call i32 (i64, i32, ...) @fcntl(i64 %7, i32 %8, i32 %13)
  br label %15

15:                                               ; preds = %24, %6
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 1
  br i1 %17, label %18, label %27

18:                                               ; preds = %15
  %19 = load i64, i64* @wjobfd, align 8
  %20 = call i32 @write(i64 %19, i8* %3, i32 1)
  %21 = icmp ne i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %23

23:                                               ; preds = %22, %18
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %2, align 4
  br label %15

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27, %1
  ret void
}

declare dso_local i32 @fcntl(i64, i32, ...) #1

declare dso_local i32 @write(i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
