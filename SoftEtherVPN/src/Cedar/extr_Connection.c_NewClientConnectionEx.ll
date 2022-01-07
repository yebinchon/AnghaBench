; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_NewClientConnectionEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Connection.c_NewClientConnectionEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, i8*, i8*, i32, i32, i32, i8*, i8*, %struct.TYPE_11__*, i8*, i8*, i32, i8*, i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_9__*, i32, i32, i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_9__ = type { i8*, i8*, i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i8*, i32 }

@CONNECTION_TCP = common dso_local global i32 0, align 4
@CONNECTION_STATUS_CONNECTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"CLIENT_CONNECTION\00", align 1
@CEDAR_CLIENT_STR = common dso_local global i8* null, align 8
@CEDAR_SERVER_LINK_STR = common dso_local global i8* null, align 8
@CEDAR_ROUTER_STR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @NewClientConnectionEx(%struct.TYPE_11__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = call i8* @ZeroMalloc(i32 152)
  %11 = bitcast i8* %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %9, align 8
  %12 = call i8* (...) @Tick64()
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 21
  store i8* %12, i8** %14, align 8
  %15 = call i32 (...) @NewLock()
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 20
  store i32 %15, i32* %17, align 4
  %18 = call i32 (...) @NewRef()
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 19
  store i32 %18, i32* %20, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 18
  store %struct.TYPE_9__* %23, %struct.TYPE_9__** %25, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 18
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @AddRef(i32 %30)
  %32 = load i32, i32* @CONNECTION_TCP, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 17
  store i32 %32, i32* %34, align 8
  %35 = call i8* @ZeroMalloc(i32 4)
  %36 = bitcast i8* %35 to %struct.TYPE_8__*
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 16
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %38, align 8
  %39 = call i8* @NewList(i32* null)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 16
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  store i8* %39, i8** %43, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load i32, i32* @CONNECTION_STATUS_CONNECTING, align 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 15
  store i32 %46, i32* %48, align 4
  %49 = call i32 @CopyStr(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 14
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 9
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %54, align 8
  %55 = call i32 (...) @NewCounter()
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 12
  store i32 %55, i32* %57, align 8
  %58 = call i8* (...) @Tick64()
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 13
  store i8* %58, i8** %60, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 12
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @Inc(i32 %63)
  %65 = call i8* @NewList(i32* null)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 11
  store i8* %65, i8** %67, align 8
  %68 = call i8* @NewList(i32* null)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 10
  store i8* %68, i8** %70, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = icmp eq i8* %71, null
  br i1 %72, label %73, label %121

73:                                               ; preds = %4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 3
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 9
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %114

94:                                               ; preds = %73
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 9
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 6
  %104 = load i32, i32* %103, align 8
  %105 = load i8*, i8** @CEDAR_CLIENT_STR, align 8
  %106 = call i32 @StrCpy(i32 %104, i32 4, i8* %105)
  br label %113

107:                                              ; preds = %94
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load i8*, i8** @CEDAR_SERVER_LINK_STR, align 8
  %112 = call i32 @StrCpy(i32 %110, i32 4, i8* %111)
  br label %113

113:                                              ; preds = %107, %101
  br label %120

114:                                              ; preds = %73
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = load i8*, i8** @CEDAR_ROUTER_STR, align 8
  %119 = call i32 @StrCpy(i32 %117, i32 4, i8* %118)
  br label %120

120:                                              ; preds = %114, %113
  br label %133

121:                                              ; preds = %4
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %8, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 7
  store i8* %125, i8** %127, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 8
  %131 = load i8*, i8** %6, align 8
  %132 = call i32 @StrCpy(i32 %130, i32 4, i8* %131)
  br label %133

133:                                              ; preds = %121, %120
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @StrCpy(i32 %136, i32 4, i8* %141)
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 4
  store i32 %147, i32* %149, align 8
  %150 = call i8* (...) @NewQueue()
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  %153 = call i8* (...) @NewQueue()
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = call i8* (...) @NewQueue()
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  store i8* %156, i8** %158, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  ret %struct.TYPE_12__* %159
}

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i8* @Tick64(...) #1

declare dso_local i32 @NewLock(...) #1

declare dso_local i32 @NewRef(...) #1

declare dso_local i32 @AddRef(i32) #1

declare dso_local i8* @NewList(i32*) #1

declare dso_local i32 @CopyStr(i8*) #1

declare dso_local i32 @NewCounter(...) #1

declare dso_local i32 @Inc(i32) #1

declare dso_local i32 @StrCpy(i32, i32, i8*) #1

declare dso_local i8* @NewQueue(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
