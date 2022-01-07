; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtRenameAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtRenameAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__*, i32* }
%struct.TYPE_16__ = type { i32 }

@ERR_INVALID_VALUE = common dso_local global i32 0, align 4
@ERR_ACCOUNT_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_ACCOUNT_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ERR_ACCOUNT_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"LC_RENAME_ACCOUNT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtRenameAccount(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %16 = icmp eq %struct.TYPE_13__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %166

18:                                               ; preds = %14
  store i32 0, i32* %8, align 4
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @UniStrCmp(i32 %21, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i32 1, i32* %4, align 4
  br label %166

28:                                               ; preds = %18
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @LockList(i32 %31)
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @UniStrLen(i32 %35)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %28
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %40 = load i32, i32* @ERR_INVALID_VALUE, align 4
  %41 = call i32 @CiSetError(%struct.TYPE_14__* %39, i32 %40)
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @UnlockList(i32 %44)
  store i32 0, i32* %4, align 4
  br label %166

46:                                               ; preds = %28
  %47 = call i8* @ZeroMalloc(i32 4)
  %48 = bitcast i8* %47 to %struct.TYPE_16__*
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @UniStrCpy(i32 %53, i32 4, i32 %56)
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.TYPE_15__* @Search(i32 %60, %struct.TYPE_15__* %9)
  store %struct.TYPE_15__* %61, %struct.TYPE_15__** %10, align 8
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %63 = icmp eq %struct.TYPE_15__* %62, null
  br i1 %63, label %64, label %75

64:                                               ; preds = %46
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @UnlockList(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = call i32 @Free(%struct.TYPE_16__* %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = load i32, i32* @ERR_ACCOUNT_NOT_FOUND, align 4
  %74 = call i32 @CiSetError(%struct.TYPE_14__* %72, i32 %73)
  store i32 0, i32* %4, align 4
  br label %166

75:                                               ; preds = %46
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %76, align 8
  %78 = call i32 @Free(%struct.TYPE_16__* %77)
  %79 = call i8* @ZeroMalloc(i32 4)
  %80 = bitcast i8* %79 to %struct.TYPE_16__*
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  store %struct.TYPE_16__* %80, %struct.TYPE_16__** %81, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @UniStrCpy(i32 %85, i32 4, i32 %88)
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call %struct.TYPE_15__* @Search(i32 %92, %struct.TYPE_15__* %9)
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %11, align 8
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %95 = icmp ne %struct.TYPE_15__* %94, null
  br i1 %95, label %96, label %107

96:                                               ; preds = %75
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @UnlockList(i32 %99)
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %101, align 8
  %103 = call i32 @Free(%struct.TYPE_16__* %102)
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %105 = load i32, i32* @ERR_ACCOUNT_ALREADY_EXISTS, align 4
  %106 = call i32 @CiSetError(%struct.TYPE_14__* %104, i32 %105)
  store i32 0, i32* %4, align 4
  br label %166

107:                                              ; preds = %75
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = call i32 @Free(%struct.TYPE_16__* %109)
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @Lock(i32 %113)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %131

119:                                              ; preds = %107
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @Unlock(i32 %122)
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @UnlockList(i32 %126)
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %129 = load i32, i32* @ERR_ACCOUNT_ACTIVE, align 4
  %130 = call i32 @CiSetError(%struct.TYPE_14__* %128, i32 %129)
  store i32 0, i32* %4, align 4
  br label %166

131:                                              ; preds = %107
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @UniStrCpy(i32 %136, i32 4, i32 %139)
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @CLog(%struct.TYPE_14__* %141, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %144, i32 %147)
  store i32 1, i32* %8, align 4
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @Unlock(i32 %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @Sort(i32 %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @UnlockList(i32 %159)
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %162 = call i32 @CiSaveConfigurationFile(%struct.TYPE_14__* %161)
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %164 = call i32 @CiNotify(%struct.TYPE_14__* %163)
  %165 = load i32, i32* %8, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %131, %119, %96, %64, %38, %27, %17
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i64 @UniStrCmp(i32, i32) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @UniStrLen(i32) #1

declare dso_local i32 @CiSetError(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_15__* @Search(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @Free(%struct.TYPE_16__*) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @CLog(%struct.TYPE_14__*, i8*, i32, i32) #1

declare dso_local i32 @Sort(i32) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_14__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
