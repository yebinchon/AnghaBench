; ModuleID = '/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_set_l.c'
source_filename = "/home/carl/AnghaBench/Atlas/lib/extr_lpeg.c_set_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @set_l to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_l(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i8* @luaL_checklstring(i32* %6, i32 1, i64* %3)
  store i8* %7, i8** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @getpatt(i32* %11, i32 1, i32* null)
  br label %33

13:                                               ; preds = %1
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_4__* @newcharset(i32* %14)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %5, align 8
  br label %16

16:                                               ; preds = %20, %13
  %17 = load i64, i64* %3, align 8
  %18 = add i64 %17, -1
  store i64 %18, i64* %3, align 8
  %19 = icmp ne i64 %17, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %16
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i32 @setchar(i32 %24, i8 zeroext %26)
  %28 = load i8*, i8** %4, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %4, align 8
  br label %16

30:                                               ; preds = %16
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %32 = call i32 @correctset(%struct.TYPE_4__* %31)
  br label %33

33:                                               ; preds = %30, %10
  ret i32 1
}

declare dso_local i8* @luaL_checklstring(i32*, i32, i64*) #1

declare dso_local i32 @getpatt(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_4__* @newcharset(i32*) #1

declare dso_local i32 @setchar(i32, i8 zeroext) #1

declare dso_local i32 @correctset(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
