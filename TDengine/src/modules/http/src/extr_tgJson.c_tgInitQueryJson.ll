; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgJson.c_tgInitQueryJson.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/http/src/extr_tgJson.c_tgInitQueryJson.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@JsonObjStt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"metrics\00", align 1
@JsonArrStt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tgInitQueryJson(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = call i32* @httpMallocJsonBuf(i32* %4)
  store i32* %5, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %27

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @httpInitJsonBuf(i32* %10, i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @httpWriteJsonBufHead(i32* %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @httpJsonItemToken(i32* %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @JsonObjStt, align 4
  %19 = call i32 @httpJsonToken(i32* %17, i32 %18)
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @httpJsonPairHead(i32* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32 @httpJsonItemToken(i32* %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @JsonArrStt, align 4
  %26 = call i32 @httpJsonToken(i32* %24, i32 %25)
  br label %27

27:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32* @httpMallocJsonBuf(i32*) #1

declare dso_local i32 @httpInitJsonBuf(i32*, i32*) #1

declare dso_local i32 @httpWriteJsonBufHead(i32*) #1

declare dso_local i32 @httpJsonItemToken(i32*) #1

declare dso_local i32 @httpJsonToken(i32*, i32) #1

declare dso_local i32 @httpJsonPairHead(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
