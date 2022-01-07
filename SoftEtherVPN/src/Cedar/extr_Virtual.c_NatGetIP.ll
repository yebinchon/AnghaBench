; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatGetIP.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NatGetIP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8** }
%struct.TYPE_9__ = type { i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@NatGetIPThread = common dso_local global i32 0, align 4
@NAT_DNS_QUERY_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NatGetIP(i32* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %144

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = call %struct.TYPE_8__* @ParseToken(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %6, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %23 = icmp eq %struct.TYPE_8__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %144

25:                                               ; preds = %19
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = call i32 @FreeToken(%struct.TYPE_8__* %31)
  store i32 0, i32* %3, align 4
  br label %144

33:                                               ; preds = %25
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @GetIP(i32* %39, i8* %40)
  store i32 %41, i32* %7, align 4
  br label %140

42:                                               ; preds = %33
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i8**, i8*** %44, align 8
  %46 = getelementptr inbounds i8*, i8** %45, i64 0
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %8, align 8
  %48 = call %struct.TYPE_9__* @ZeroMalloc(i32 32)
  store %struct.TYPE_9__* %48, %struct.TYPE_9__** %9, align 8
  %49 = call %struct.TYPE_9__* @ZeroMalloc(i32 32)
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %10, align 8
  %50 = call i8* (...) @NewRef()
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = call i8* (...) @NewRef()
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i8* %53, i8** %55, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @AddRef(i8* %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @AddRef(i8* %62)
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = call i32 @StrCpy(i32 %66, i32 4, i8* %67)
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @StrCpy(i32 %71, i32 4, i8* %72)
  %74 = load i32, i32* @NatGetIPThread, align 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %76 = call i32* @NewThread(i32 %74, %struct.TYPE_9__* %75)
  store i32* %76, i32** %11, align 8
  %77 = load i32, i32* @NatGetIPThread, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %79 = call i32* @NewThread(i32 %77, %struct.TYPE_9__* %78)
  store i32* %79, i32** %12, align 8
  %80 = load i32*, i32** %11, align 8
  %81 = load i32, i32* @NAT_DNS_QUERY_TIMEOUT, align 4
  %82 = call i32 @WaitThread(i32* %80, i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %42
  store i32 1, i32* %7, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 1
  %91 = call i32 @Copy(i32* %88, i32* %90, i32 4)
  br label %117

92:                                               ; preds = %42
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* @NAT_DNS_QUERY_TIMEOUT, align 4
  %95 = call i32 @WaitThread(i32* %93, i32 %94)
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %92
  store i32 1, i32* %7, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = call i32 @Copy(i32* %101, i32* %103, i32 4)
  br label %116

105:                                              ; preds = %92
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  store i32 1, i32* %7, align 4
  %111 = load i32*, i32** %4, align 8
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = call i32 @Copy(i32* %111, i32* %113, i32 4)
  br label %115

115:                                              ; preds = %110, %105
  br label %116

116:                                              ; preds = %115, %100
  br label %117

117:                                              ; preds = %116, %87
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @ReleaseThread(i32* %118)
  %120 = load i32*, i32** %12, align 8
  %121 = call i32 @ReleaseThread(i32* %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @Release(i8* %124)
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %129 = call i32 @Free(%struct.TYPE_9__* %128)
  br label %130

130:                                              ; preds = %127, %117
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i8*, i8** %132, align 8
  %134 = call i64 @Release(i8* %133)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %130
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %138 = call i32 @Free(%struct.TYPE_9__* %137)
  br label %139

139:                                              ; preds = %136, %130
  br label %140

140:                                              ; preds = %139, %38
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %142 = call i32 @FreeToken(%struct.TYPE_8__* %141)
  %143 = load i32, i32* %7, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %140, %30, %24, %18
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local %struct.TYPE_8__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @FreeToken(%struct.TYPE_8__*) #1

declare dso_local i32 @GetIP(i32*, i8*) #1

declare dso_local %struct.TYPE_9__* @ZeroMalloc(i32) #1

declare dso_local i8* @NewRef(...) #1

declare dso_local i32 @AddRef(i8*) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i32* @NewThread(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @WaitThread(i32*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32 @ReleaseThread(i32*) #1

declare dso_local i64 @Release(i8*) #1

declare dso_local i32 @Free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
