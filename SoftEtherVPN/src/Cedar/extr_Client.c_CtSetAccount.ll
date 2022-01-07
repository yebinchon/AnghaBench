; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtSetAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CtSetAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_19__*, i32, i32, i32, %struct.TYPE_18__*, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i64, i32*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i32, i32, i32*, i32, i32, i32, %struct.TYPE_24__*, i32, i32* }
%struct.TYPE_24__ = type { i32 }

@ERR_ACCOUNT_NOT_FOUND = common dso_local global i32 0, align 4
@CLIENT_AUTHTYPE_CERT = common dso_local global i64 0, align 8
@ERR_NOT_RSA_1024 = common dso_local global i32 0, align 4
@ERR_ACCOUNT_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CtSetAccount(%struct.TYPE_22__* %0, %struct.TYPE_21__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_23__, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %11 = icmp eq %struct.TYPE_22__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %14 = icmp eq %struct.TYPE_21__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %3
  store i32 0, i32* %4, align 4
  br label %209

16:                                               ; preds = %12
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @LockList(i32 %19)
  %21 = call i8* @ZeroMalloc(i32 4)
  %22 = bitcast i8* %21 to %struct.TYPE_24__*
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 6
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 6
  %25 = load %struct.TYPE_24__*, %struct.TYPE_24__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 4
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UniStrCpy(i32 %27, i32 4, i32 %32)
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.TYPE_23__* @Search(i32 %36, %struct.TYPE_23__* %8)
  store %struct.TYPE_23__* %37, %struct.TYPE_23__** %9, align 8
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %39 = icmp eq %struct.TYPE_23__* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %16
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @UnlockList(i32 %43)
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 6
  %46 = load %struct.TYPE_24__*, %struct.TYPE_24__** %45, align 8
  %47 = call i32 @Free(%struct.TYPE_24__* %46)
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %49 = load i32, i32* @ERR_ACCOUNT_NOT_FOUND, align 4
  %50 = call i32 @CiSetError(%struct.TYPE_22__* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %209

51:                                               ; preds = %16
  %52 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %8, i32 0, i32 6
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %52, align 8
  %54 = call i32 @Free(%struct.TYPE_24__* %53)
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CLIENT_AUTHTYPE_CERT, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %94

62:                                               ; preds = %51
  %63 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %63, i32 0, i32 5
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %66, align 8
  %68 = icmp eq %struct.TYPE_20__* %67, null
  br i1 %68, label %85, label %69

69:                                               ; preds = %62
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %69
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 5
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %93

85:                                               ; preds = %78, %69, %62
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @UnlockList(i32 %88)
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = load i32, i32* @ERR_NOT_RSA_1024, align 4
  %92 = call i32 @CiSetError(%struct.TYPE_22__* %90, i32 %91)
  store i32 0, i32* %4, align 4
  br label %209

93:                                               ; preds = %78
  br label %94

94:                                               ; preds = %93, %51
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = icmp ne %struct.TYPE_19__* %97, null
  br i1 %98, label %99, label %114

99:                                               ; preds = %94
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @UnlockList(i32 %109)
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %112 = load i32, i32* @ERR_NOT_RSA_1024, align 4
  %113 = call i32 @CiSetError(%struct.TYPE_22__* %111, i32 %112)
  store i32 0, i32* %4, align 4
  br label %209

114:                                              ; preds = %99, %94
  %115 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @Lock(i32 %117)
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @CiFreeClientAuth(i32 %121)
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 5
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = call i32 @CopyClientAuth(%struct.TYPE_17__* %125)
  %127 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 6
  %131 = load %struct.TYPE_24__*, %struct.TYPE_24__** %130, align 8
  %132 = call i32 @Free(%struct.TYPE_24__* %131)
  %133 = call i8* @ZeroMalloc(i32 4)
  %134 = bitcast i8* %133 to %struct.TYPE_24__*
  %135 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %135, i32 0, i32 6
  store %struct.TYPE_24__* %134, %struct.TYPE_24__** %136, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 6
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %138, align 8
  %140 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %140, i32 0, i32 4
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = call i32 @Copy(%struct.TYPE_24__* %139, %struct.TYPE_18__* %142, i32 4)
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %147, i32 0, i32 5
  store i32 %146, i32* %148, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 4
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 0
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = icmp ne %struct.TYPE_19__* %161, null
  br i1 %162, label %163, label %180

163:                                              ; preds = %114
  %164 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %170 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = call i32 @FreeX(i32* %171)
  br label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %175, align 8
  %177 = call i32* @CloneX(%struct.TYPE_19__* %176)
  %178 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 2
  store i32* %177, i32** %179, align 8
  br label %193

180:                                              ; preds = %114
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 2
  %183 = load i32*, i32** %182, align 8
  %184 = icmp ne i32* %183, null
  br i1 %184, label %185, label %190

185:                                              ; preds = %180
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 2
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @FreeX(i32* %188)
  br label %190

190:                                              ; preds = %185, %180
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %191, i32 0, i32 2
  store i32* null, i32** %192, align 8
  br label %193

193:                                              ; preds = %190, %173
  %194 = call i32 (...) @SystemTime64()
  %195 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %196 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @Unlock(i32 %199)
  %201 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @UnlockList(i32 %203)
  %205 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %206 = call i32 @CiSaveConfigurationFile(%struct.TYPE_22__* %205)
  %207 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %208 = call i32 @CiNotify(%struct.TYPE_22__* %207)
  store i32 1, i32* %4, align 4
  br label %209

209:                                              ; preds = %193, %106, %85, %40, %15
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i8* @ZeroMalloc(i32) #1

declare dso_local i32 @UniStrCpy(i32, i32, i32) #1

declare dso_local %struct.TYPE_23__* @Search(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @Free(%struct.TYPE_24__*) #1

declare dso_local i32 @CiSetError(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @CiFreeClientAuth(i32) #1

declare dso_local i32 @CopyClientAuth(%struct.TYPE_17__*) #1

declare dso_local i32 @Copy(%struct.TYPE_24__*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @FreeX(i32*) #1

declare dso_local i32* @CloneX(%struct.TYPE_19__*) #1

declare dso_local i32 @SystemTime64(...) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @CiSaveConfigurationFile(%struct.TYPE_22__*) #1

declare dso_local i32 @CiNotify(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
