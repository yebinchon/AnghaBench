; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_AddAccessListEx.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_AddAccessListEx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i64, i64, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32, i8* }

@MAX_ACCESSLISTS = common dso_local global i64 0, align 8
@ACCESS_LIST_INCLUDED_PREFIX = common dso_local global i32 0, align 4
@ACCESS_LIST_EXCLUDED_PREFIX = common dso_local global i32 0, align 4
@HUB_ACCESSLIST_DELAY_MAX = common dso_local global i32 0, align 4
@HUB_ACCESSLIST_JITTER_MAX = common dso_local global i32 0, align 4
@HUB_ACCESSLIST_LOSS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @AddAccessListEx(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = icmp eq %struct.TYPE_11__* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %16 = icmp eq %struct.TYPE_12__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14, %4
  br label %214

18:                                               ; preds = %14
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @LockList(i32 %21)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @LIST_NUM(i32 %25)
  %27 = load i64, i64* @MAX_ACCESSLISTS, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %18
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @UnlockList(i32 %32)
  br label %214

34:                                               ; preds = %18
  %35 = call %struct.TYPE_12__* @Malloc(i32 104)
  store %struct.TYPE_12__* %35, %struct.TYPE_12__** %9, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %38 = call i32 @Copy(%struct.TYPE_12__* %36, %struct.TYPE_12__* %37, i32 104)
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @IsEmptyStr(i32 %45)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %34
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %53 = call i32 @StartWith(i32 %51, i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %48
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 12
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @ACCESS_LIST_EXCLUDED_PREFIX, align 4
  %60 = call i32 @StartWith(i32 %58, i32 %59)
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 12
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 12
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @MakeSimpleUsernameRemoveNtDomain(i32 %65, i32 4, i32 %68)
  br label %73

70:                                               ; preds = %55, %48
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  br label %73

73:                                               ; preds = %70, %62
  br label %74

74:                                               ; preds = %73, %34
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 10
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @IsEmptyStr(i32 %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %106

80:                                               ; preds = %74
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 10
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ACCESS_LIST_INCLUDED_PREFIX, align 4
  %85 = call i32 @StartWith(i32 %83, i32 %84)
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %80
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ACCESS_LIST_EXCLUDED_PREFIX, align 4
  %92 = call i32 @StartWith(i32 %90, i32 %91)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @MakeSimpleUsernameRemoveNtDomain(i32 %97, i32 4, i32 %100)
  br label %105

102:                                              ; preds = %87, %80
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 1
  store i32 1, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %94
  br label %106

106:                                              ; preds = %105, %74
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 8
  %110 = call i8* @UsernameToInt64(i32 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 13
  store i8* %110, i8** %112, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 10
  %115 = load i32, i32* %114, align 8
  %116 = call i8* @UsernameToInt64(i32 %115)
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 11
  store i8* %116, i8** %118, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %106
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 9
  %126 = load i8*, i8** %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = call i8* @MAX(i8* %126, i64 %129)
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %123, %106
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %148

138:                                              ; preds = %133
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 8
  %141 = load i8*, i8** %140, align 8
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = call i8* @MAX(i8* %141, i64 %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 8
  store i8* %145, i8** %147, align 8
  br label %148

148:                                              ; preds = %138, %133
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 7
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* @HUB_ACCESSLIST_DELAY_MAX, align 4
  %153 = call i8* @MAKESURE(i8* %151, i32 0, i32 %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 6
  %158 = load i8*, i8** %157, align 8
  %159 = load i32, i32* @HUB_ACCESSLIST_JITTER_MAX, align 4
  %160 = call i8* @MAKESURE(i8* %158, i32 0, i32 %159)
  %161 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %162 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %161, i32 0, i32 6
  store i8* %160, i8** %162, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 5
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* @HUB_ACCESSLIST_LOSS_MAX, align 4
  %167 = call i8* @MAKESURE(i8* %165, i32 0, i32 %166)
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 5
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %148
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %177 = call i32 @Insert(i32 %175, %struct.TYPE_12__* %176)
  br label %184

178:                                              ; preds = %148
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %183 = call i32 @Add(i32 %181, %struct.TYPE_12__* %182)
  br label %184

184:                                              ; preds = %178, %172
  %185 = load i32, i32* %8, align 4
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %209

187:                                              ; preds = %184
  store i64 0, i64* %10, align 8
  br label %188

188:                                              ; preds = %205, %187
  %189 = load i64, i64* %10, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i64 @LIST_NUM(i32 %192)
  %194 = icmp slt i64 %189, %193
  br i1 %194, label %195, label %208

195:                                              ; preds = %188
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i64, i64* %10, align 8
  %200 = call %struct.TYPE_12__* @LIST_DATA(i32 %198, i64 %199)
  store %struct.TYPE_12__* %200, %struct.TYPE_12__** %11, align 8
  %201 = load i64, i64* %10, align 8
  %202 = add nsw i64 %201, 1
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 4
  store i64 %202, i64* %204, align 8
  br label %205

205:                                              ; preds = %195
  %206 = load i64, i64* %10, align 8
  %207 = add nsw i64 %206, 1
  store i64 %207, i64* %10, align 8
  br label %188

208:                                              ; preds = %188
  br label %209

209:                                              ; preds = %208, %184
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @UnlockList(i32 %212)
  br label %214

214:                                              ; preds = %209, %29, %17
  ret void
}

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local %struct.TYPE_12__* @Malloc(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_12__*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @IsEmptyStr(i32) #1

declare dso_local i32 @StartWith(i32, i32) #1

declare dso_local i32 @MakeSimpleUsernameRemoveNtDomain(i32, i32, i32) #1

declare dso_local i8* @UsernameToInt64(i32) #1

declare dso_local i8* @MAX(i8*, i64) #1

declare dso_local i8* @MAKESURE(i8*, i32, i32) #1

declare dso_local i32 @Insert(i32, %struct.TYPE_12__*) #1

declare dso_local i32 @Add(i32, %struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @LIST_DATA(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
