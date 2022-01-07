; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_GenerateMachineUniqueHash.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_GenerateMachineUniqueHash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i8, i8*, i8*, i8*, i8, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @GenerateMachineUniqueHash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca [64 x i8], align 16
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %96

10:                                               ; preds = %1
  %11 = call i32 (...) @GetHostIPAddressListHash()
  store i32 %11, i32* %6, align 4
  %12 = call %struct.TYPE_9__* (...) @NewBuf()
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %14 = call i32 @GetMachineName(i8* %13, i32 64)
  %15 = call %struct.TYPE_8__* (...) @GetOsInfo()
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %18 = getelementptr inbounds [64 x i8], [64 x i8]* %4, i64 0, i64 0
  %19 = call i32 @StrLen(i8* %18)
  %20 = call i32 @WriteBuf(%struct.TYPE_9__* %16, i8* %17, i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @WriteBufInt64(%struct.TYPE_9__* %21, i32 %22)
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = call i32 @WriteBuf(%struct.TYPE_9__* %24, i8* %26, i32 1)
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @StrLen(i8* %34)
  %36 = call i32 @WriteBuf(%struct.TYPE_9__* %28, i8* %31, i32 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @StrLen(i8* %43)
  %45 = call i32 @WriteBuf(%struct.TYPE_9__* %37, i8* %40, i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 3
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 @StrLen(i8* %52)
  %54 = call i32 @WriteBuf(%struct.TYPE_9__* %46, i8* %49, i32 %53)
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 4
  %58 = call i32 @WriteBuf(%struct.TYPE_9__* %55, i8* %57, i32 1)
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 5
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @StrLen(i8* %65)
  %67 = call i32 @WriteBuf(%struct.TYPE_9__* %59, i8* %62, i32 %66)
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 6
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 6
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @StrLen(i8* %74)
  %76 = call i32 @WriteBuf(%struct.TYPE_9__* %68, i8* %71, i32 %75)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 7
  %80 = load i8*, i8** %79, align 8
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 7
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @StrLen(i8* %83)
  %85 = call i32 @WriteBuf(%struct.TYPE_9__* %77, i8* %80, i32 %84)
  %86 = load i8*, i8** %2, align 8
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @Sha0(i8* %86, i32 %89, i32 %92)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %95 = call i32 @FreeBuf(%struct.TYPE_9__* %94)
  br label %96

96:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @GetHostIPAddressListHash(...) #1

declare dso_local %struct.TYPE_9__* @NewBuf(...) #1

declare dso_local i32 @GetMachineName(i8*, i32) #1

declare dso_local %struct.TYPE_8__* @GetOsInfo(...) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i32 @WriteBufInt64(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @Sha0(i8*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
