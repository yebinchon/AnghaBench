; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_delegated.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_open_delegated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.nfs_open_file = type { i32 }
%struct.kauth_acl_eval = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.vnop_access_args = type { i32, i32, i32, i32* }

@NFS_OPEN_SHARE_ACCESS_READ = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@NFS_OPEN_SHARE_ACCESS_WRITE = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@KAUTH_AEVAL_IS_OWNER = common dso_local global i32 0, align 4
@KAUTH_AEVAL_IN_GROUP = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_ALL_BITS = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_READ_BITS = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_WRITE_BITS = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_EXECUTE_BITS = common dso_local global i32 0, align 4
@KAUTH_RESULT_ALLOW = common dso_local global i64 0, align 8
@vnop_access_desc = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_open_delegated(%struct.TYPE_8__* %0, %struct.nfs_open_file* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.nfs_open_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.kauth_acl_eval, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.vnop_access_args, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store %struct.nfs_open_file* %1, %struct.nfs_open_file** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %11, align 4
  %21 = call i32 @vfs_context_ucred(i32 %20)
  store i32 %21, i32* %18, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %5
  store i32 1, i32* %14, align 4
  %27 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %26, %5
  br label %31

31:                                               ; preds = %134, %30
  store i32 0, i32* %16, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %38 = load i32, i32* %16, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %16, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_WRITE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %47 = load i32, i32* %16, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %16, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %112

55:                                               ; preds = %49
  %56 = load i32, i32* %16, align 4
  %57 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 8
  store %struct.TYPE_6__* %59, %struct.TYPE_6__** %60, align 8
  %61 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 1
  store i32 1, i32* %61, align 4
  %62 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 7
  store i32 0, i32* %62, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %18, align 4
  %68 = call i64 @kauth_cred_getuid(i32 %67)
  %69 = icmp eq i64 %66, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %55
  %71 = load i32, i32* @KAUTH_AEVAL_IS_OWNER, align 4
  %72 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 7
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %71
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %55
  %76 = load i32, i32* %18, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @kauth_cred_ismember_gid(i32 %76, i32 %80, i32* %13)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load i32, i32* @KAUTH_AEVAL_IN_GROUP, align 4
  %89 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %87, %84, %75
  %93 = load i32, i32* @KAUTH_VNODE_GENERIC_ALL_BITS, align 4
  %94 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 6
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* @KAUTH_VNODE_GENERIC_READ_BITS, align 4
  %96 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 5
  store i32 %95, i32* %96, align 8
  %97 = load i32, i32* @KAUTH_VNODE_GENERIC_WRITE_BITS, align 4
  %98 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 4
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* @KAUTH_VNODE_GENERIC_EXECUTE_BITS, align 4
  %100 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 3
  store i32 %99, i32* %100, align 8
  %101 = load i32, i32* %18, align 4
  %102 = call i32 @kauth_acl_evaluate(i32 %101, %struct.kauth_acl_eval* %17)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %92
  %106 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %17, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @KAUTH_RESULT_ALLOW, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  store i32 1, i32* %15, align 4
  br label %111

111:                                              ; preds = %110, %105, %92
  br label %112

112:                                              ; preds = %111, %49
  %113 = load i32, i32* %15, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %19, i32 0, i32 3
  store i32* @vnop_access_desc, i32** %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = call i32 @NFSTOV(%struct.TYPE_8__* %117)
  %119 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %19, i32 0, i32 2
  store i32 %118, i32* %119, align 8
  %120 = load i32, i32* %16, align 4
  %121 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %19, i32 0, i32 0
  store i32 %120, i32* %121, align 8
  %122 = load i32, i32* %11, align 4
  %123 = getelementptr inbounds %struct.vnop_access_args, %struct.vnop_access_args* %19, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = call i32 @nfs_vnop_access(%struct.vnop_access_args* %19)
  store i32 %124, i32* %12, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %115
  store i32 1, i32* %15, align 4
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %112
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %148, label %131

131:                                              ; preds = %128
  %132 = load i32, i32* %14, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load i32, i32* @NFS_OPEN_SHARE_ACCESS_READ, align 4
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %9, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %9, align 4
  store i32 0, i32* %14, align 4
  br label %31

139:                                              ; preds = %131
  %140 = load i32, i32* %12, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  br label %146

144:                                              ; preds = %139
  %145 = load i32, i32* @EACCES, align 4
  br label %146

146:                                              ; preds = %144, %142
  %147 = phi i32 [ %143, %142 ], [ %145, %144 ]
  store i32 %147, i32* %6, align 4
  br label %153

148:                                              ; preds = %128
  %149 = load %struct.nfs_open_file*, %struct.nfs_open_file** %8, align 8
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @nfs_open_file_add_open(%struct.nfs_open_file* %149, i32 %150, i32 %151, i32 1)
  store i32 0, i32* %6, align 4
  br label %153

153:                                              ; preds = %148, %146
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i32 @kauth_cred_ismember_gid(i32, i32, i32*) #1

declare dso_local i32 @kauth_acl_evaluate(i32, %struct.kauth_acl_eval*) #1

declare dso_local i32 @NFSTOV(%struct.TYPE_8__*) #1

declare dso_local i32 @nfs_vnop_access(%struct.vnop_access_args*) #1

declare dso_local i32 @nfs_open_file_add_open(%struct.nfs_open_file*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
