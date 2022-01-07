; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetConnectionInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetConnectionInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i8*, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i8*, i32, i32 }

@MAX_CONNECTION_NAME_LEN = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@ERR_OBJECT_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StGetConnectionInfo(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %6, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %7, align 8
  %20 = load i32, i32* @MAX_CONNECTION_NAME_LEN, align 4
  %21 = add nsw i32 %20, 1
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %9, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %10, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i64 @IsEmptyStr(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %162

32:                                               ; preds = %2
  %33 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @LockList(i32 %36)
  %38 = call i32 @Zero(%struct.TYPE_15__* %12, i32 88)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i8* %41, i8** %42, align 8
  %43 = trunc i64 %22 to i32
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @StrCpy(i8* %24, i32 %43, i8* %46)
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call %struct.TYPE_15__* @Search(i32 %50, %struct.TYPE_15__* %12)
  store %struct.TYPE_15__* %51, %struct.TYPE_15__** %8, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %53 = icmp ne %struct.TYPE_15__* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %32
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 15
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @AddRef(i32 %57)
  br label %59

59:                                               ; preds = %54, %32
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @UnlockList(i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %65 = icmp eq %struct.TYPE_15__* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @ERR_OBJECT_NOT_FOUND, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %162

68:                                               ; preds = %59
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = call i32 @Zero(%struct.TYPE_15__* %69, i32 88)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @StrCpy(i8* %73, i32 8, i8* %24)
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @Lock(i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 14
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %13, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %83 = icmp ne %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %102

84:                                               ; preds = %68
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 2
  %87 = call i32 @IPToUINT(i32* %86)
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 13
  store i32 %87, i32* %89, align 4
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 12
  store i32 %92, i32* %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 @StrCpy(i8* %97, i32 8, i8* %100)
  br label %102

102:                                              ; preds = %84, %68
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @StrCpy(i8* %105, i32 8, i8* %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 10
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @TickToTime(i32 %112)
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 11
  store i32 %113, i32* %115, align 4
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 9
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 9
  store i32 %118, i32* %120, align 4
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 2
  %126 = load i8*, i8** %125, align 8
  %127 = call i32 @StrCpy(i8* %123, i32 8, i8* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @StrCpy(i8* %130, i32 8, i8* %133)
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 8
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 8
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %140, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 8
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 5
  store i32 %152, i32* %154, align 4
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @Unlock(i32 %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %160 = call i32 @ReleaseConnection(%struct.TYPE_15__* %159)
  %161 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %161, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %162

162:                                              ; preds = %102, %66, %30
  %163 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %163)
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IsEmptyStr(i8*) #2

declare dso_local i32 @LockList(i32) #2

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @StrCpy(i8*, i32, i8*) #2

declare dso_local %struct.TYPE_15__* @Search(i32, %struct.TYPE_15__*) #2

declare dso_local i32 @AddRef(i32) #2

declare dso_local i32 @UnlockList(i32) #2

declare dso_local i32 @Lock(i32) #2

declare dso_local i32 @IPToUINT(i32*) #2

declare dso_local i32 @TickToTime(i32) #2

declare dso_local i32 @Unlock(i32) #2

declare dso_local i32 @ReleaseConnection(%struct.TYPE_15__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
