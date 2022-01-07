; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_pointer.c_compare.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_pointer.c_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"abcdefg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compare() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = load i8*, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = getelementptr inbounds i8, i8* %3, i64 1
  %5 = icmp eq i8* %2, %4
  %6 = zext i1 %5 to i32
  %7 = call i32 @expect(i32 0, i32 %6)
  %8 = load i8*, i8** %1, align 8
  %9 = load i8*, i8** %1, align 8
  %10 = icmp eq i8* %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @expect(i32 1, i32 %11)
  %13 = load i8*, i8** %1, align 8
  %14 = load i8*, i8** %1, align 8
  %15 = icmp ne i8* %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @expect(i32 0, i32 %16)
  %18 = load i8*, i8** %1, align 8
  %19 = load i8*, i8** %1, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 1
  %21 = icmp ne i8* %18, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @expect(i32 1, i32 %22)
  %24 = load i8*, i8** %1, align 8
  %25 = load i8*, i8** %1, align 8
  %26 = icmp ult i8* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @expect(i32 0, i32 %27)
  %29 = load i8*, i8** %1, align 8
  %30 = load i8*, i8** %1, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 1
  %32 = icmp ult i8* %29, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @expect(i32 1, i32 %33)
  %35 = load i8*, i8** %1, align 8
  %36 = load i8*, i8** %1, align 8
  %37 = icmp ugt i8* %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @expect(i32 0, i32 %38)
  %40 = load i8*, i8** %1, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  %42 = load i8*, i8** %1, align 8
  %43 = icmp ugt i8* %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @expect(i32 1, i32 %44)
  %46 = load i8*, i8** %1, align 8
  %47 = load i8*, i8** %1, align 8
  %48 = icmp uge i8* %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @expect(i32 1, i32 %49)
  %51 = load i8*, i8** %1, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 1
  %53 = load i8*, i8** %1, align 8
  %54 = icmp uge i8* %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @expect(i32 1, i32 %55)
  %57 = load i8*, i8** %1, align 8
  %58 = load i8*, i8** %1, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = icmp uge i8* %57, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @expect(i32 0, i32 %61)
  %63 = load i8*, i8** %1, align 8
  %64 = load i8*, i8** %1, align 8
  %65 = icmp ule i8* %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @expect(i32 1, i32 %66)
  %68 = load i8*, i8** %1, align 8
  %69 = load i8*, i8** %1, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = icmp ule i8* %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @expect(i32 1, i32 %72)
  %74 = load i8*, i8** %1, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8*, i8** %1, align 8
  %77 = icmp ule i8* %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @expect(i32 0, i32 %78)
  %80 = call i32 @expect(i32 4, i32 4)
  %81 = call i32 @expect(i32 4, i32 4)
  %82 = call i32 @expect(i32 4, i32 4)
  %83 = call i32 @expect(i32 4, i32 4)
  %84 = call i32 @expect(i32 4, i32 4)
  %85 = call i32 @expect(i32 4, i32 4)
  ret void
}

declare dso_local i32 @expect(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
